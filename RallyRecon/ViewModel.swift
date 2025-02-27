//
//  ViewModel.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/25/25.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct PaceNote: Identifiable, Codable, Equatable, Hashable {
    let id = UUID()
    var turnDirection: String
    var turnSharpness: String
    var duration: String
    var straights: String
    var bumps: String
    var crests: String
    var additionalModifiers: String
}

struct Stage: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var name: String
//    var paceNotes: [PaceNote]

    init(name: String) {
        self.name = name
    }
}

class Rally: Identifiable, ObservableObject {
    let id = UUID()
    var name: String
    @Published var stages: [Stage]

    init(name: String, stages: [Stage] = []) {
        self.name = name
        self.stages = stages
    }
}

class RallyViewModel2: ObservableObject {
    @Published var rallies: [Rally] = []
    
    func addRally(name: String) {
            let newRally = Rally(name: name)
            rallies.append(newRally)
        }

        func addStage(to rally: Rally, name: String) {
            let newStage = Stage(name: name)
            if let index = rallies.firstIndex(where: { $0.id == rally.id }) {
                rallies[index].stages.append(newStage)
            }
        }

//        func addPaceNote(to stage: inout Stage, note: PaceNote) {
//            stage.paceNotes.append(note)
//        }
}

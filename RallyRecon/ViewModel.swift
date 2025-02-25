//
//  ViewModel.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/25/25.
//

import SwiftUI

struct PaceNote: Identifiable, Codable {
    let id = UUID()
    var turnDirection: String
    var turnSharpness: String
    var duration: String
    var straights: String
    var bumps: String
    var crests: String
    var additionalModifiers: String
}

struct Stage: Identifiable, Codable {
    let id = UUID()
    var name: String
    var paceNotes: [PaceNote]

    init(name: String, paceNotes: [PaceNote] = []) {
        self.name = name
        self.paceNotes = paceNotes
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
}

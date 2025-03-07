//
//  Model.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 3/7/25.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct PaceNote: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var turnDirection: String
    var turnSharpness: String
    var duration: String
    var straights: String
    var bumps: String
    var crests: String
    var additionalModifiers: String
    
    init(turnDirection: String, turnSharpness: String, duration: String, straights: String, bumps: String, crests: String, additionalModifiers: String) {
        self.id = UUID()
        self.turnDirection = turnDirection
        self.turnSharpness = turnSharpness
        self.duration = duration
        self.straights = straights
        self.bumps = bumps
        self.crests = crests
        self.additionalModifiers = additionalModifiers
    }
}

struct Stage: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var name: String
    var paceNotes: [PaceNote]
    
    init(name: String, paceNotes: [PaceNote] = []) {
        self.id = nil
        self.name = name
        self.paceNotes = paceNotes
    }
}

struct Rally: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var name: String
    var stages: [Stage]
    
    init(name: String, stages: [Stage] = []) {
        self.id = nil
        self.name = name
        self.stages = stages
    }
}

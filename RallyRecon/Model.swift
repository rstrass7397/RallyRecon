//
//  Model.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 2/27/25.
//

import SwiftData
import SwiftUI

@Model
class PaceNotes: Identifiable {
    var id: UUID = UUID()
    var turnDirection: String
    var turnSharpness: Int
    var turnDuration: String
    var turnStraights: Int
    var turnBumps: String
    var turnCrests: String
    var turnAdditionalNotes: String
    var turnAdditionalNotes2: String
    
    init(turnDirection: String, turnSharpness: Int, turnDuration: String, turnStraights: Int, turnBumps: String, turnCrests: String, turnAdditionalNotes: String, turnAdditionalNotes2: String) {
        self.id = UUID()
        self.turnDirection = turnDirection
        self.turnSharpness = turnSharpness
        self.turnDuration = turnDuration
        self.turnStraights = turnStraights
        self.turnBumps = turnBumps
        self.turnCrests = turnCrests
        self.turnAdditionalNotes = turnAdditionalNotes
        self.turnAdditionalNotes2 = turnAdditionalNotes2
    }
    
    struct Stage: Identifiable {
        let id = UUID()
        var name: String
        var stages: [Stage] = []
    }
    
    struct Rally: Identifiable {
        let id = UUID()
        var name: String
        var rallies: [Rally] = []
    }
    
}

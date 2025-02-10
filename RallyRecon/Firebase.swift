//
//  Firebase.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 1/31/25.
//

import SwiftData
import SwiftUI

@Model
class Firebase: Hashable {
    var turnDirection: String
    var turnSharpness: Int
    var turnDuration: String
    var turnStraights: Int
    var turnBumps: String
    var turnCrests: String
    var turnAdditionalNotes: String
    var turnAdditionalNotes2: String
    
    init(turnDirection: String, turnSharpness: Int, turnDuration: String, turnStraights: Int, turnBumps: String, turnCrests: String, turnAdditionalNotes: String, turnAdditionalNotes2: String) {
        self.turnDirection = turnDirection
        self.turnSharpness = turnSharpness
        self.turnDuration = turnDuration
        self.turnStraights = turnStraights
        self.turnBumps = turnBumps
        self.turnCrests = turnCrests
        self.turnAdditionalNotes = turnAdditionalNotes
        self.turnAdditionalNotes2 = turnAdditionalNotes2
        
    }
}


//
//  Model.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 2/27/25.
//

import SwiftData
import SwiftUI

@Model
class rallyModel: Hashable, ObservableObject {
    @Published var turnDirection: String
    @Published var turnSharpness: Int
    @Published var turnDuration: String
    @Published var turnStraights: Int
    @Published var turnBumps: String
    @Published var turnCrests: String
    @Published var turnAdditionalNotes: String
    @Published var turnAdditionalNotes2: String
    
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

//
//  ViewModelRally.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 3/7/25.
//

import SwiftUI
import SwiftData

class Modifiers: ObservableObject {
    @Published var isTrueCrests: [String: Bool]
    @Published var isTrueNotes: [String: Bool]
    @Published var isTrueNotes2: [String: Bool]
    @Published var isTrueDuration: [String: Bool]
    @Published var isTrueBumps: [String: Bool]
    @Published var isTrueStraights: [String: Bool]
    @Published var isTrueTurns: [String: Bool]

    init() {
        isTrueCrests = [
            "SmallCrest": false,
            "Crest": false,
            "BigCrest": false,
            "OnCrest": false,
            "LongCrest": false
        ]
        isTrueNotes = [
            "/ or U": false,
            "?": false,
            "][": false,
            "JCT": false,
            "past JCT": false,
            "D.C.": false,
            "NAR": false,
            "O.C.": false
        ]
        isTrueNotes2 = [
            "SLP": false,
            "RUF": false,
            "Stay L": false,
            "Stay R": false,
            "Thru": false,
            "!": false,
            "!!": false,
            "!!!": false
        ]
        isTrueDuration = [
            "short" : false,
            "long" : false,
            "very long" : false,
            "extremely long" : false,
            "late" : false,
            "tightens" : false,
            "opens" : false
        ]
        isTrueBumps = [
            "Jump": false,
            "BigJump": false,
            "Bump": false,
            "Dip" : false
        ]
        isTrueStraights = [
            "50" : false,
            "100" : false,
            "150" : false,
            "200" : false,
            "Into" : false
        ]
        isTrueTurns = [
            "left": false,
            "right": false,
            "1": false,
            "2": false,
            "3": false,
            "4": false,
            "5": false,
            "6": false
        ]
    }
}

struct Stage {
    var name: String
    var isTrueTurns: [String: Bool]
    var trueModifiers: [String]
}



struct Rally {
    var name: String
    var stages: [Stage]
}

class PaceNotesViewModel: ObservableObject {
    @Published var paceNotesList: [PaceNotes] = []
    
    func updatePaceNote(_ paceNote: PaceNotes, newDirection: String, newSharpness: Int, newDuration: String, newStraights: Int, newBumps: String, newCrests: String, newNotes: String, newNotes2: String) {
        
        if let index = paceNotesList.firstIndex(where: { $0.id == paceNote.id }) {
            paceNotesList[index].turnDirection = newDirection
            paceNotesList[index].turnSharpness = newSharpness
            paceNotesList[index].turnDuration = newDuration
            paceNotesList[index].turnStraights = newStraights
            paceNotesList[index].turnBumps = newBumps
            paceNotesList[index].turnCrests = newCrests
            paceNotesList[index].turnAdditionalNotes = newNotes
            paceNotesList[index].turnAdditionalNotes2 = newNotes2
        }
    }
}

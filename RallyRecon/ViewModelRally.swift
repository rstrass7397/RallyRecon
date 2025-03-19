//
//  ViewModelRally.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 3/7/25.
//

import SwiftUI
import SwiftData

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

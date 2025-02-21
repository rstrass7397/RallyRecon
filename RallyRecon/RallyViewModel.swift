//
//  RallyViewModel.swift
//  RallyRecon
////
////  Created by Ananya A. Maru on 2/10/25.
////
import Foundation
import FirebaseFirestore

@Observable
class RallyViewModel: ObservableObject{
    @Published var rallies: [rallyInfo] = []
    
    func addRally(turnDirection: String, turnSharpness: Int, turnDuration: String, turnStraights: Int, turnBumps: String, turnCrests: String, turnAdditionalNotes: String, turnAdditionalNotes2: String) {
        let newRally = rallyInfo(
            turnDirection: turnDirection,
            turnSharpness: turnSharpness,
            turnDuration: turnDuration,
            turnStraights: turnStraights,
            turnBumps: turnBumps,
            turnCrests: turnCrests,
            turnAdditionalNotes: turnAdditionalNotes,
            turnAdditionalNotes2: turnAdditionalNotes2
        )
        rallies.append(newRally)
        let turnDatabase = Firestore.firestore()
        
        let rallyFirebase: [String: Any] = [
            "turnDirection": turnDirection,
            "turnSharpness": turnSharpness,
            "turnDuration": turnDuration,
            "turnStraights": turnStraights,
            "turnBumps": turnBumps,
            "turnCrests": turnCrests,
            "turnAdditionalNotes": turnAdditionalNotes,
            "turnAdditionalNotes2": turnAdditionalNotes2
        ]
        turnDatabase.collection("rallies").addDocument(data: rallyFirebase)
    }
}


//
//  RallyViewModel.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 3/5/25.
//

import Foundation
import FirebaseFirestore

@Observable
class RallyViewModel: ObservableObject {
    @Published var rallies: [rallyModel] = []
    
    func addRally(turnDirection: String, turnSharpness: Int, turnDuration: String, turnStraights: Int, turnBumps: String, turnCrests: String, turnAdditionalNotes: String, turnAdditionalNotes2: String) {
        let newRally = rallyModel(
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
        let turnDatabase = Firestore.firestore()
    }
}

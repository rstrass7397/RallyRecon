//
//  FirebaseTest.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/10/25.
//

import SwiftUI

class PaceNotesViewModel: ObservableObject {
    @Published var paceNotes: [String: Bool] = [
        "/ or U" : false,
        "?" : false,
        "][" : false,
        "JCT" : false,
        "past JCT" : false,
        "D.C." : false,
        "NAR" : false,
        "O.C." : false,
        "SLP" : false,
        "RUF" : false,
        "Stay L" : false,
        "Stay R" : false,
        "Thru" : false,
        "!" : false,
        "!!" : false,
        "!!!" : false,
        "SmallCrest" : false,
        "Crest" : false,
        "BigCrest" : false,
        "OnCrest" : false,
        "LongCrest" : false,
        "short" : false,
        "long" : false,
        "very long" : false,
        "extremely long" : false,
        "late" : false,
        "tightens" : false,
        "opens" : false,
        "Jump" : false,
        "BigJump" : false,
        "Bump" : false,
        "Dip" : false,
        "50" : false,
        "100" : false,
        "150" : false,
        "200" : false,
        "Into" : false,
        "left": false,
        "right": false,
        "1" : false,
        "2" : false,
        "3" : false,
        "4" : false,
        "5" : false,
        "6" : false
    ]
    
    func togglePaceNote(_ key: String) {
            if let currentValue = paceNotes[key] {
                paceNotes[key] = !currentValue
            }
        }
}

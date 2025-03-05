//
//  ViewModel.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/25/25.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct PaceNote: Identifiable, Codable, Equatable, Hashable {
    let id = UUID()
    var turnDirection: String
    var turnSharpness: String
    var duration: String
    var straights: String
    var bumps: String
    var crests: String
    var additionalModifiers: String
}

struct Stage: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var name: String
//    var paceNotes: [PaceNote]

    init(name: String) {
        self.name = name
    }
}

struct Rally: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var name: String

    init(name: String) {
        self.name = name
    }
}

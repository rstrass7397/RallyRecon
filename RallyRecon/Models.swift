//
//  Models.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 3/7/25.
//

import SwiftUI

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
    let id = UUID()
    var name: String
    var paceNotes: [PaceNote] = []
}

struct Rally: Identifiable, Codable, Hashable {
    let id = UUID()
    var name: String
    var stages: [Stage] = []
}

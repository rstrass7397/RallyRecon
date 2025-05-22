import Foundation

struct Rally: Identifiable, Codable {
    var id: UUID
    var name: String
    var stages: [Stage]
}

struct Stage: Identifiable, Codable {
    var id: UUID
    var name: String
    var isTrueTurns: [String: Bool]
    var trueModifiers: [String]
}

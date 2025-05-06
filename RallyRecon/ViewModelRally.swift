

import SwiftUI
import SwiftData

struct Stage: Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var isTrueTurns: [String: Bool]
    var trueModifiers: [String]
    
    static func == (lhs: Stage, rhs: Stage) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
}


struct Rally: Identifiable, Codable {
    var id = UUID()
    var name: String
    var stages: [Stage]
}

class PersistenceManager {
    
    private static let ralliesKey = "ralliesKey"
    
    static func saveRallies(rallies: [Rally]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(rallies) {
            UserDefaults.standard.set(encoded, forKey: ralliesKey)
        }
    }
    
    static func loadRallies() -> [Rally] {
        if let savedData = UserDefaults.standard.data(forKey: ralliesKey),
           let decodedRallies = try? JSONDecoder().decode([Rally].self, from: savedData) {
            return decodedRallies
        }
        return []
    }
}

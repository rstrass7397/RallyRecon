import Foundation

class PersistenceManager {
    private static let ralliesKey = "ralliesKey"

    static func saveRallies(_ rallies: [Rally]) {
        if let encoded = try? JSONEncoder().encode(rallies) {
            UserDefaults.standard.set(encoded, forKey: ralliesKey)
        }
    }

    static func loadRallies() -> [Rally] {
        if let data = UserDefaults.standard.data(forKey: ralliesKey),
           let decoded = try? JSONDecoder().decode([Rally].self, from: data) {
            return decoded
        }
        return []
    }
}

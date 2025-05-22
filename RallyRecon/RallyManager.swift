import Foundation
import Combine

class RallyManager: ObservableObject {
    @Published var rallies: [Rally] = PersistenceManager.loadRallies()

    static let shared = RallyManager() // singleton if you want

    private init() {}

    func save() {
        PersistenceManager.saveRallies(rallies)
    }

    // Rallies

    func addRally(_ rally: Rally) {
        rallies.append(rally)
        save()
    }

    func deleteRally(atOffsets offsets: IndexSet) {
        rallies.remove(atOffsets: offsets)
        save()
    }

    // Stages

    func addStage(to rallyID: UUID, stage: Stage) {
        guard let index = rallies.firstIndex(where: { $0.id == rallyID }) else { return }
        rallies[index].stages.append(stage)
        save()
    }

    func deleteStage(atOffsets offsets: IndexSet, rallyID: UUID) {
        guard let index = rallies.firstIndex(where: { $0.id == rallyID }) else { return }
        rallies[index].stages.remove(atOffsets: offsets)
        save()
    }

    // Modifiers

    func addModifier(to rallyID: UUID, stageID: UUID, modifier: String) {
        guard let rallyIndex = rallies.firstIndex(where: { $0.id == rallyID }),
              let stageIndex = rallies[rallyIndex].stages.firstIndex(where: { $0.id == stageID }) else { return }

        rallies[rallyIndex].stages[stageIndex].trueModifiers.append(modifier)
        save()
    }

    func deleteModifier(atOffsets offsets: IndexSet, rallyID: UUID, stageID: UUID) {
        guard let rallyIndex = rallies.firstIndex(where: { $0.id == rallyID }),
              let stageIndex = rallies[rallyIndex].stages.firstIndex(where: { $0.id == stageID }) else { return }

        rallies[rallyIndex].stages[stageIndex].trueModifiers.remove(atOffsets: offsets)
        save()
    }
}

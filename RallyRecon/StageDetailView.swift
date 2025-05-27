import SwiftUI

struct StageDetailView: View {
    @EnvironmentObject var rallyManager: RallyManager

    let rallyID: UUID
    let stageID: UUID

    var rallyIndex: Int? {
        rallyManager.rallies.firstIndex(where: { $0.id == rallyID })
    }

    var stageIndex: Int? {
        if let rallyIndex = rallyIndex {
            return rallyManager.rallies[rallyIndex].stages.firstIndex(where: { $0.id == stageID })
        }
        return nil
    }
    var body: some View {
        VStack {
            if let rallyIndex = rallyIndex, let stageIndex = stageIndex {
                Text(rallyManager.rallies[rallyIndex].stages[stageIndex].name)
                    .font(.largeTitle)
                    .padding()

                List {
                    ForEach(rallyManager.rallies[rallyIndex].stages[stageIndex].trueModifiers, id: \.self) { modifier in
                        Text(modifier)
                    }
                    .onDelete { offsets in
                        rallyManager.deleteModifier(atOffsets: offsets, rallyID: rallyID, stageID: stageID)
                    }
                }

                NavigationLink(
                    "Add Modifiers",
                    destination: ModHub(rallyID: rallyID, stageID: stageID)
                )

            } else {
                Text("Stage not found")
            }
        }
    }
}

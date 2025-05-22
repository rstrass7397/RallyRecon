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

    @State private var showTurnInfo = false
    @State private var isTrueTurns: [String: Bool] = [
        "left": false, "right": false,
        "1": false, "2": false, "3": false,
        "4": false, "5": false, "6": false
    ]

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

                Button("Add Modifier") {
                    showTurnInfo.toggle()
                }
                .padding()
                .buttonStyle(.bordered)
                .sheet(isPresented: $showTurnInfo) {
                    TurnInfoMod(isTrueTurns: $isTrueTurns) { selectedModifier in
                        let modifierString = "\(selectedModifier[0]), \(selectedModifier[1])"
                        rallyManager.addModifier(to: rallyID, stageID: stageID, modifier: modifierString)
                        resetSelections()
                    }
                }
            } else {
                Text("Stage not found")
            }
        }
    }

    private func resetSelections() {
        for key in isTrueTurns.keys {
            isTrueTurns[key] = false
        }
    }
}

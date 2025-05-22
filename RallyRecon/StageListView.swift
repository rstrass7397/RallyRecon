import SwiftUI

struct StageListView: View {
    @EnvironmentObject var rallyManager: RallyManager
    let rallyID: UUID

    var rallyIndex: Int? {
        rallyManager.rallies.firstIndex(where: { $0.id == rallyID })
    }

    var body: some View {
        VStack {
            if let rallyIndex = rallyIndex {
                List {
                    ForEach(rallyManager.rallies[rallyIndex].stages) { stage in
                        NavigationLink(destination: StageDetailView(rallyID: rallyID, stageID: stage.id)) {
                            Text(stage.name)
                        }
                    }
                    .onDelete { offsets in
                        rallyManager.deleteStage(atOffsets: offsets, rallyID: rallyID)
                    }
                }
                NavigationLink("Add Stage", destination: AddStageView(rallyID: rallyID))
                    .padding()
            } else {
                Text("Rally not found")
            }
        }
        .navigationTitle("Stages")
    }
}

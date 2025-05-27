import SwiftUI

struct StageListView: View {
    @EnvironmentObject var rallyManager: RallyManager
    let rallyID: UUID
    
    var rallyIndex: Int? {
        rallyManager.rallies.firstIndex(where: { $0.id == rallyID })
    }
    
    var body: some View {
        VStack {
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                    .ignoresSafeArea()
                if let rallyIndex = rallyIndex {
                    List {
                        ForEach(rallyManager.rallies[rallyIndex].stages) { stage in
                            NavigationLink(destination: StageDetailView(rallyID: rallyID, stageID: stage.id)) {
                                Text(stage.name)
                                    .foregroundColor(.navy)
                            }
                        }
                        .onDelete { offsets in
                            rallyManager.deleteStage(atOffsets: offsets, rallyID: rallyID)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.creme)
                    
                    //                    NavigationLink("Add Stage", destination: AddStageView(rallyID: rallyID))
                    //                        .padding()
                } else {
                    Text("Rally not found")
                }
            }
            .navigationTitle("Stages")
            .toolbar{
                NavigationLink("Add Stage", destination: AddStageView(rallyID: rallyID))
            }
        }
    }
}

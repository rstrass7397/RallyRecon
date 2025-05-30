import SwiftUI

struct StageListView: View {
    @EnvironmentObject var rallyManager: RallyManager
    let rallyID: UUID
    
    var rallyIndex: Int? {
        rallyManager.rallies.firstIndex(where: { $0.id == rallyID })
    }
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            VStack{
               Text("Stages")
                    .font(.system(size: 46, weight: .bold))
                    .foregroundColor(.navy)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 20)
                if let rallyIndex = rallyIndex {
                    List {
                        ForEach(rallyManager.rallies[rallyIndex].stages) { stage in
                            NavigationLink(destination: StageDetailView(rallyID: rallyID, stageID: stage.id)) {
                                Text(stage.name)
                                    .font(.largeTitle)
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
            .toolbar{
                NavigationLink("Add Stage", destination: AddStageView(rallyID: rallyID))
                    .font(.system(size: 30))
            }
        }
    }
}

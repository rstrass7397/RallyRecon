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
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            VStack {
                if let rallyIndex = rallyIndex, let stageIndex = stageIndex {
                    Text(rallyManager.rallies[rallyIndex].stages[stageIndex].name)
                        .font(.largeTitle)
                        .font(.system(size: 46, weight: .bold))
                        .foregroundColor(.navy)
                        .frame(maxWidth: .infinity, alignment: .center)
                    List {
                        ForEach(rallyManager.rallies[rallyIndex].stages[stageIndex].trueModifiers, id: \.self) { modifier in
                            Text(modifier)
                                .font(.largeTitle)
                                .foregroundColor(.navy)
                        }
                        .onDelete { offsets in
                            rallyManager.deleteModifier(atOffsets: offsets, rallyID: rallyID, stageID: stageID)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.creme)
                    
                    NavigationLink(
                        "Add Modifiers",
                        destination: ModHub(rallyID: rallyID, stageID: stageID)
                    )
                    .padding()
                    .frame(width: 240, height: 60)
                    .background(Color.navy)
                    .foregroundColor(.creme)
                    .cornerRadius(15)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                } else {
                    Text("Stage not found")
                }
            }
        }
    }
}

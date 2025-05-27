import SwiftUI

struct RallyListView: View {
    @EnvironmentObject var rallyManager: RallyManager
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            NavigationStack {
                List {
                    ForEach(rallyManager.rallies) { rally in
                        NavigationLink(destination: StageListView(rallyID: rally.id)) {
                            Text(rally.name)
                                .foregroundColor(.navy)
                        }
                    }
                    .onDelete(perform: rallyManager.deleteRally)
                }
                .scrollContentBackground(.hidden)
                .background(Color.creme)
                .navigationTitle("Rallies")
                .toolbar {
                    NavigationLink("Add Rally", destination: AddRallyView())
                }
            }
        }
    }
}

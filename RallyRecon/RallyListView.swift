import SwiftUI

struct RallyListView: View {
    @EnvironmentObject var rallyManager: RallyManager
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.creme
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Rallies")
                        .font(.system(size: 46, weight: .bold))
                        .foregroundColor(.navy)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 20)
                    List {
                        ForEach(rallyManager.rallies) { rally in
                            NavigationLink(destination: StageListView(rallyID: rally.id)) {
                                Text(rally.name)
                                    .font(.largeTitle)
                                    .foregroundColor(.navy)
                            }
                        }
                        .onDelete(perform: rallyManager.deleteRally)
                    }
                    .scrollContentBackground(.hidden)
                }
            }
            .toolbar {
                NavigationLink("Add Rally", destination: AddRallyView())
                    .font(.system(size: 30))
            }
        }
    }
}


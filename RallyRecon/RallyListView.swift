import SwiftUI

struct RallyListView: View {
    @EnvironmentObject var rallyManager: RallyManager

    var body: some View {
        NavigationView {
            List {
                ForEach(rallyManager.rallies) { rally in
                    NavigationLink(destination: StageListView(rallyID: rally.id)) {
                        Text(rally.name)
                    }
                }
                .onDelete(perform: rallyManager.deleteRally)
            }
            .navigationTitle("Rallies")
            .toolbar {
                NavigationLink("Add Rally", destination: AddRallyView())
            }
        }
    }
}

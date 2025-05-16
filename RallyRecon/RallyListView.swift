import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Rallies")
                    .font(.largeTitle)
                    .padding()
                
                List(rallies, id: \.name) { rally in
                    NavigationLink(destination: StageListView(rally: rally, stages: $rallies.first(where: { $0.id == rally.id })!.stages)) {
                        Text(rally.name)
                    }
                }
                .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
            }
        }
    }
}

import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.creme
                    .ignoresSafeArea()
                VStack {
                    Text("Rallies")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(Color.navy)
                    
                    List(rallies, id: \.name) { rally in
                        NavigationLink(destination: StageListView(rally: rally, stages: $rallies.first(where: { $0.id == rally.id })!.stages)) {
                            Text(rally.name)
                                .foregroundColor(Color.navy)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .background(Color.creme)
                    .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
                }
            }
        }
    }
}


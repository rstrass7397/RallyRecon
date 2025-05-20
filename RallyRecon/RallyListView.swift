import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                    .ignoresSafeArea()
                NavigationView{
                    VStack {
                        Text("Rallies")
                            .font(.largeTitle)
                            .padding()
                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                        
                        List(rallies, id: \.name) { rally in
                            NavigationLink(destination: StageListView(rally: rally, stages: $rallies.first(where: { $0.id == rally.id })!.stages)) {
                                Text(rally.name)
                                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            }
                            .listRowBackground(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
                        }
                        .scrollContentBackground(.hidden)
                        
                        .background(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
                        
                        .navigationBarItems(
                            trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies))
                                .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255)) // Navy link
                        )
                    }
                }
            }
        }
    }
}

import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
            }
                
                VStack {
                    Text("Rallies")
                        .font(.largeTitle)
                        .padding()
                    
                    List(rallies, id: \.name) { rally in
                        NavigationLink(destination: StageListView(rally: rally, stages: $rallies.first(where: { $0.id == rally.id })!.stages)) {
                            Text(rally.name)
                            ZStack{
                                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .ignoresSafeArea()
                                Text("Rallies")
                                    .padding()
                                    .frame(width: 150, height: 60)
                                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                                    .cornerRadius(20)
                                    .font(.system(size:25, weight: .bold))
                                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                                
                                List(rallies, id: \.name) { rally in
                                    NavigationLink(destination: StageListView)
                                    Text(Rally.name)
                                    }
                                }
                                .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
                            }
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    RallyListView()
}

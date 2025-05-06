

import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea()
                    Text("Rallies")
                        .padding()
                        .frame(width: 150, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:35, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    
                    List(rallies, id: \.name) { rally in
                        NavigationLink(destination: StageListView(rally: rally)) {
                            Text(rally.name)
                        }
                    }
                    .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
                }
            }
        }
    }
}
#Preview {
    RallyListView()
}

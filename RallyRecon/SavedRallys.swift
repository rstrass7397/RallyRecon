import SwiftUI

struct SavedRallies: View {
    @State var inputText: String = ""
    @State var rallies: [Rally] = []
    var body: some View {
            
            VStack{
                Text("Saved Rallies")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                
                
                List(rallies, id: \.name) { rally in
                NavigationLink(destination: StageListView(rally: rally)) {
                    Text(rally.name)
                }
            }
            .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
            }
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure background fills entire screen
                       .background(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
        }
    }

#Preview {
    SavedRallies()
}




import SwiftUI

struct SavedRallys: View {
    @State var inputText: String = ""
    @State var rallies: [Rally] = []
    var body: some View {
            
            VStack{
                Text("Saved Rallies")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                
                TextField("Enter text", text: $inputText
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.title)
                
                List(rallies, id: \.name) { rally in
                NavigationLink(destination: StageListView(rally: rally)) {
                    Text(rally.name)
                }
            }
            .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
            }
            .font(.title)
        }
    }

#Preview {
    SavedRallys()
}




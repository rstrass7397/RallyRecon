import SwiftUI

struct SavedRallys: View {
    @State var inputText: String = ""
    
    var body: some View {
            
            VStack{
                Text("Saved Rallies")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                
                TextField("Enter text", text: $inputText, onCommit: addRally
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.title)
                
                List(rallies, id: \.self) { rally in
                    Text(rally.name)
                        .font(.title)
                }
                .navigationTitle("Stages")
            }
            .font(.title)
        }
    }

#Preview {
    SavedRallys()
}




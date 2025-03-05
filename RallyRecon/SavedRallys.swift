import SwiftUI
import Firebase
import FirebaseFirestore

struct SavedRallys: View {
    @FirestoreQuery(collectionPath: "Rallies") var rallies: [Rally]
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
    
    func addRally() {
        let newRally = Rally(name: inputText)
        DispatchQueue.main.async {
            inputText = ""
        }
        let dataBase = Firestore.firestore()
        dataBase
            .collection("Rallies")
            .document(newRally.name)
            .setData(["name":newRally.name])
    }
}

#Preview {
    SavedRallys()
}




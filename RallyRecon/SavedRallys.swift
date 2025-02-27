import SwiftUI
import Firebase
import FirebaseFirestore

struct SavedRallys: View {
    @FirestoreQuery(collectionPath: "Rallies") var rallies: [Rally]
    @State var inputText: String = ""
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack{
                Text("Saved Rallies")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                NavigationLink("View Saved Stages", destination: StagesView())
                    .frame(width: 400, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    .padding(30)
                
                NavigationLink("Edit", destination: ModifierHub())
                    .frame(width: 300, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    .padding(30)
            }
        }
    }
    
    
    struct Rally: Identifiable, Decodable {
        @DocumentID var id: String?
        var name: String
        var stages: [Stage]
    }

   
    struct Stage: Identifiable, Decodable {
        var id: String
        var name: String
        
    }

    class RallyViewModel2: ObservableObject {
        @Published var rallies: [Rally] = []
        
        func addRally(name: String) {
            let newRally = Rally(id: UUID().uuidString, name: name, stages: [])
            rallies.append(newRally)
        }
    }
}

#Preview {
    SavedRallys()
}




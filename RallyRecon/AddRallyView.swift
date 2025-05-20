import SwiftUI

struct AddRallyView: View {
    @State var rallyName: String = ""
    @Binding var rallies: [Rally]
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack {
                
                TextField("Enter Rally Name", text: $rallyName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add Rally") {
                    let newRally = Rally(name: rallyName, stages: [])
                    rallies.append(newRally)
                    PersistenceManager.saveRallies(rallies: rallies)
                    rallyName = ""
                }
                .padding()
                .frame(width: 150, height: 60)
                .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                .cornerRadius(20)
                .font(.system(size:20, weight: .bold))
                .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

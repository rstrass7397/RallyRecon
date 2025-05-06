import SwiftUI

struct AddRallyView: View {
    @State var rallyName: String = ""
    @Binding var rallies: [Rally]
    
    var body: some View {
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
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

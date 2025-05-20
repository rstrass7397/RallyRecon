import SwiftUI

struct AddRallyView: View {
    @State var rallyName: String = ""
    @Binding var rallies: [Rally]
    
    var body: some View {
        ZStack {
            Color.creme
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
                .background(Color.navy)
                .cornerRadius(20)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.creme)
            }
        }
    }
}


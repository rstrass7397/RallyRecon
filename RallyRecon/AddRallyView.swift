import SwiftUI

struct AddRallyView: View {
    @State var rallyName: String = ""
    @State private var showMessage = false
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
                    showMessage = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showMessage = false
                    }
                }
                .padding()
                .frame(width: 150, height: 60)
                .background(Color.navy)
                .cornerRadius(20)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.creme)
                if showMessage {
                    Text("Rally Added!")
                        .foregroundColor(.navy)
                        .font(.headline)
                    
                }
            }
        }
    }
}

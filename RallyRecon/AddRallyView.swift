import SwiftUI

struct AddRallyView: View {
    @EnvironmentObject var rallyManager: RallyManager
    @Environment(\.presentationMode) var presentationMode
    @State private var showMessage = false
    @State private var rallyName = ""

    var body: some View {
        VStack {
            TextField("Rally Name", text: $rallyName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Add Rally") {
                addRally()
                showMessage = true

                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showMessage = false
                }
            }
            .disabled(rallyName.trimmingCharacters(in: .whitespaces).isEmpty)
            .padding()
            .frame(width: 150, height: 60)
            .background(Color.navy)
            .cornerRadius(20)
            .foregroundColor(Color.creme)
            .font(.system(size: 20, weight: .bold))

            if showMessage {
                Text("Rally Added!")
                    .foregroundColor(.navy)
                    .font(.headline)
                    .padding(.top)
            }
        }
        .padding()
        .navigationTitle("Add Rally")
    }

    private func addRally() {
        let trimmed = rallyName.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }

        let newRally = Rally(id: UUID(), name: trimmed, stages: [])
        rallyManager.addRally(newRally)
        rallyName = ""
    }
}
#Preview {
   AddRallyView()
}

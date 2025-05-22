import SwiftUI

struct AddRallyView: View {
    @EnvironmentObject var rallyManager: RallyManager
    @Environment(\.presentationMode) var presentationMode

    @State private var rallyName = ""

    var body: some View {
        VStack {
            TextField("Rally Name", text: $rallyName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Add Rally") {
                addRally()
            }
            .padding()
            .disabled(rallyName.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .navigationTitle("Add Rally")
    }

    private func addRally() {
        let trimmed = rallyName.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }

        let newRally = Rally(id: UUID(), name: trimmed, stages: [])
        rallyManager.addRally(newRally)
        presentationMode.wrappedValue.dismiss()
    }
}

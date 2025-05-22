import SwiftUI

struct AddStageView: View {
    @EnvironmentObject var rallyManager: RallyManager
    @Environment(\.presentationMode) var presentationMode

    let rallyID: UUID
    @State private var stageName = ""

    var body: some View {
        VStack {
            TextField("Stage Name", text: $stageName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Add Stage") {
                addStage()
            }
            .padding()
            .disabled(stageName.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .navigationTitle("Add Stage")
    }

    private func addStage() {
        let trimmed = stageName.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }

        let newStage = Stage(
            id: UUID(),
            name: trimmed,
            isTrueTurns: ["left": false, "right": false, "1": false, "2": false, "3": false, "4": false, "5": false, "6": false],
            trueModifiers: []
        )

        rallyManager.addStage(to: rallyID, stage: newStage)
        presentationMode.wrappedValue.dismiss()
    }
}


import SwiftUI

struct AddStageView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    @State private var stageName: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Stage Name", text: $stageName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Add Stage") {

                let newStage = Stage(name: stageName, isTrueTurns: ["left": false, "right": false, "1": false, "2": false, "3": false, "4": false, "5": false, "6": false], trueModifiers: [])
                stages.append(newStage)
                stageName = ""
            }
            .padding()
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

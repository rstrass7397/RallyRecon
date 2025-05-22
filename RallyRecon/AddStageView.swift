
import SwiftUI

struct AddStageView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    @State private var showMessage = false
    @State private var stageName: String = ""
    
    var body: some View {
        ZStack {
            Color.creme
                .ignoresSafeArea()
            VStack {
                TextField("Enter Stage Name", text: $stageName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add Stage") {
                    let newStage = Stage(name: stageName, isTrueTurns: ["left": false, "right": false, "1": false, "2": false, "3": false, "4": false, "5": false, "6": false], trueModifiers: [])
                    stages.append(newStage)
                    stageName = ""
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
                    Text("Stage Added!")
                        .foregroundColor(.navy)
                        .font(.headline)
                }
            }
        }
    }
}

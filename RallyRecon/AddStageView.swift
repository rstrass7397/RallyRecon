
import SwiftUI

struct AddStageView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    @State private var stageName: String = ""
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
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
                .frame(width: 150, height: 60)
                .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                .cornerRadius(20)
                .font(.system(size:20, weight: .bold))
                .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
            }
            .padding()
        }
    }
}

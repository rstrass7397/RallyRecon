import SwiftUI

struct AddStageView: View {
    @EnvironmentObject var rallyManager: RallyManager
    @Environment(\.presentationMode) var presentationMode
    let rallyID: UUID
    @State private var stageName = ""
    @State private var showMessage = false
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            VStack {
                TextField("Stage Name", text: $stageName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Stage") {
                    addStage()
                    showMessage = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showMessage = false
                    }
                }
                .disabled(stageName.trimmingCharacters(in: .whitespaces).isEmpty)
                .padding()
                .frame(width: 150, height: 60)
                .background(Color.navy)
                .cornerRadius(20)
                .foregroundColor(Color.creme)
                .font(.system(size: 20, weight: .bold))
                
                if showMessage {
                    Text("Stage Added!")
                        .foregroundColor(.navy)
                        .font(.headline)
                        .padding(.top)
                }
            }
            .padding()
            .navigationTitle("Add Stage")
        }
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
            stageName = ""
        }
    }

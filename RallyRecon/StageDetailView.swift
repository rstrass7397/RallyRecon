
import SwiftUI

struct StageDetailView: View {
    @Binding var stage: Stage
    @Binding var stages: [Stage]
    @State private var showTurnInfo = false
    @State private var isTrueTurns: [String: Bool] = [
        "left": false, "right": false, "1": false, "2": false, "3": false, "4": false, "5": false, "6": false
    ]
    
    var body: some View {
        ZStack {
            
            Color.creme
                .ignoresSafeArea()
            VStack {
                Text(stage.name)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.navy)
                
                ForEach(stage.trueModifiers, id: \.self) { modifier in
                    Text(modifier)
                        .font(.title)
                        .padding(5)
                        .foregroundColor(Color.navy)
                        
                }
                
                Button("Add Modifier") {
                    showTurnInfo.toggle()
                }
                .padding()
                .frame(width: 200, height: 60)
                .background(Color.navy)
                .cornerRadius(20)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color.creme)

            }
            //        .background(Color.creme)
                    .sheet(isPresented: $showTurnInfo){
                        TurnInfoMod(isTrueTurns: $isTrueTurns) { selectedModifier in
                            let modifier = "\(selectedModifier[0]), \(selectedModifier[1])"
                            stage.trueModifiers.append(modifier)
                        }
                    }
        }
    }
}

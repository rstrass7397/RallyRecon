
import SwiftUI

struct StageDetailView: View {
    @Binding var stage: Stage
    @Binding var stages: [Stage]

    var body: some View {
        VStack {
            Text(stage.name)
                .font(.largeTitle)
                .padding()
            

            VStack {
                Text("True Modifiers for \(stage.name):")
                    .font(.title2)
                    .padding()
                
                ForEach(stage.trueModifiers, id: \.self) { modifier in
                    Text(modifier)
                        .font(.headline)
                        .padding(5)
                }
            }
            

            NavigationLink("Add Modifier", destination: TurnInfoMod(isTrueTurns: $stage.isTrueTurns, trueModifiers: $stage.trueModifiers))
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

            Button("Save Modifications") {
                if let index = stages.firstIndex(where: { $0.name == stage.name }) {
                    stages[index].isTrueTurns = stage.isTrueTurns
                    stages[index].trueModifiers = stage.trueModifiers
                }
            }
            .padding()
        }
        .navigationBarTitle("Stage Detail", displayMode: .inline)
    }
}


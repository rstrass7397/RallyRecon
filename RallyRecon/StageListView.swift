
import SwiftUI

struct StageListView: View {
    var rally: Rally
    @State var stages: [Stage]
    
    init(rally: Rally) {
        self.rally = rally
        self._stages = State(initialValue: rally.stages)
    }
    
    var body: some View {
        VStack {
            Text("Stages for \(rally.name)")
                .font(.largeTitle)
                .padding()
            
            List(stages.indices, id: \.self) { index in
                let stage = stages[index]
                NavigationLink(destination: StageDetailView(stage: $stages[index], stages: $stages)) {
                    Text(stage.name)
                }
            }
            
            NavigationLink("Add Stage", destination: AddStageView(rally: rally, stages: $stages))
        }
    }
}



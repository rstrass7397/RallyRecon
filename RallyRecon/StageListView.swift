import SwiftUI

struct StageListView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    
    var body: some View {
        VStack {
            Text("Stages for \(rally.name)")
                .font(.largeTitle)
                .padding()
            
            List(stages.indices, id: \.self) { index in
                NavigationLink(destination: StageDetailView(stage: $stages[index], stages: $stages)) {
                    Text(stages[index].name)
                }
            }
            
            NavigationLink("Add Stage", destination: AddStageView(rally: rally, stages: $stages))
        }
    }
}

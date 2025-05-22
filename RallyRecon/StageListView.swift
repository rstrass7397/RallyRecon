import SwiftUI

struct StageListView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    
    var body: some View {
        VStack {
            Text("Stages for \(rally.name)")
                .font(.largeTitle)
                .padding()
                .foregroundColor(Color.navy)
            
            List {
                           ForEach(stages.indices, id: \.self) { index in
                               NavigationLink(destination: StageDetailView(stage: $stages[index], stages: $stages)) {
                                   Text(stages[index].name)
                                       .foregroundColor(Color.navy)
                               }
                               .listRowBackground(Color.creme)
                           }
                       }
                       .scrollContentBackground(.hidden) 
                       .background(Color.creme)
            
            NavigationLink("Add Stage", destination: AddStageView(rally: rally, stages: $stages))
                .padding()
                .background(Color.navy)
                .cornerRadius(10)
                .foregroundColor(Color.creme)
        }
        .background(Color.creme)
    }
}


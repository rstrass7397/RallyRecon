import SwiftUI

struct StageListView: View {
    var rally: Rally
    @Binding var stages: [Stage]
    
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack {
                Text("Stages for \(rally.name)")
                    .font(.system(size:20, weight: .bold))
                    .padding()
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                List(stages.indices, id: \.self) { index in
                    let stage = stages[index]
                    NavigationLink(destination: StageDetailView(stage: $stages[index], stages: $stages)) {
                        Text(stage.name)
                            NavigationLink("Add Stage", destination: AddStageView(rally: rally, stages: $stages))
                        }
                    }
                }
            }
            
        }
    }

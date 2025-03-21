//
//  DisplayARally.swift
//  RallyRecon
//
//  Created by Amar Setka on 3/17/25.
//

import SwiftUI

struct DisplayAStage : View {
    @State var addStage: String = ""
    @Binding var currentRally: String
    @State var stages: [String] = []
    var body: some View {
        Text("\(currentRally)")
        TextField("Add a stage", text: $addStage)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
            .onSubmit {
                stages.append(addStage)
                addStage = ""
            }
        List {
            ForEach(stages,id: \.self){ stage  in
                NavigationLink(destination: StagesView(), label: {
                        Text(stage)
                    }
                )
            }
        }
        .frame(width: 800, height: 900)
        
        
    }
}

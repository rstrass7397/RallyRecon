//
//  DisplayARally.swift
//  RallyRecon
//
//  Created by Amar Setka on 3/17/25.
//

import SwiftUI

struct DisplayARally : View {
    @State var addStage : String = ""
    @Binding var currentRally: String
    let stages = [""]
    var body: some View {
        Text("\(currentRally)")
        TextField("Add a stage", text: $addStage)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
        List {
            ForEach(stages,id: \.self){ stage  in
                Text(stage)
            }
        }
        .frame(width: 800, height: 900)
        
        
    }
}

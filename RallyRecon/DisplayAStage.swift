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
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Text("\(currentRally)")
                .frame(width: 1000, height: 100, alignment: .top)
                .font(.system(size:70, weight: .bold))
                .padding(30)
                .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
            TextField("Add a stage", text: $addStage)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.title)
                .onSubmit {
                    stages.append(addStage)
                    addStage = ""
                }
            NavigationLink("Add Note", destination: ModifierHub())
                .font(.system(size:40, weight: .bold))
                .foregroundColor(.black)
            List {
                ForEach(stages,id: \.self){ stage  in
                    NavigationLink {
                        Text(stage)
                        Text("hello")
                    } label: {
                        Text(stage)
                    }
                }
            }
            .frame(width: 800, height: 900)
            .background( Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
            
            
            
        }
    }
}


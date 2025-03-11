//
//  StagesView.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 1/27/25.
//
import Firebase
import SwiftUI

struct StagesView: View {
    @State var inputText: String = ""
    @State var items: [String] = []
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
            
            NavigationLink("View Saved Rallies", destination: SavedRallys())
                .foregroundColor(.black)
            
//            List(stages, id: \.self) { stage in
//                    Text(stage.name)
//                        .font(.title)
//                
//            }
            .navigationTitle("Stages")
        }
        .font(.title)
    }
}
#Preview {
    StagesView()
}


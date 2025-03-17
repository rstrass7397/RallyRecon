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
    @State var items = ["Item 1", "Item 2"]
    @State var editingIndex: Int? = nil
        @State var editedText: String = ""
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
            
            NavigationLink("View Saved Rallies", destination: SavedRallys())
                .foregroundColor(.black)
            
            List { ForEach(0..<items.count, id: \.self) { index in
                
                if editingIndex == index {
            TextField("Edit Item", text: $editedText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Save") {
                items[index] = editedText
                editingIndex = nil
                    }
                .padding(.trailing)
                } else {
            Text(items[index])
            Button("Edit") {
            editingIndex = index
            editedText = items[index]
                                       }
                        .font(.title)
                
            }
            .navigationTitle("Stages")
        }
        .font(.title)
    }
}
#Preview {
    StagesView()
}


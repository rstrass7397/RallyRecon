//
//  StagesView.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 1/27/25.
//

//potentially delete later !!!!!!!!!!!!

import Firebase
import SwiftUI

struct StagesView: View {
    @State var inputText: String = ""
    @State var items = ["Item 1", "Item 2"]
    @State var editingIndex: Int? = nil
    @State var editedText: String = ""

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                    .ignoresSafeArea()
                
                TextField("Enter text", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(.title)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .padding()
                
                NavigationLink("View Saved Rallies", destination: SavedRallies())
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                List {
                    ForEach(0..<items.count, id: \.self) { index in
                        if editingIndex == index {
                            VStack {
                                TextField("Edit Item", text: $editedText)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                                    .padding()
                                
                                Button("Save") {
                                    items[index] = editedText
                                    editingIndex = nil
                                }
                                .padding(.trailing)
                            }
                        } else {
                            HStack {
                                Text(items[index])
                                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                                    .padding()
                                Spacer()
                                Button("Edit") {
                                    editingIndex = index
                                    editedText = items[index]
                                }
                                .font(.title2)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
                .navigationTitle("Stages")
                .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                .padding()
                
                .toolbar {
                    EditButton()
                }
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
            }
        }
    }
    private func deleteItem(at offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
}

#Preview {
    StagesView()
}

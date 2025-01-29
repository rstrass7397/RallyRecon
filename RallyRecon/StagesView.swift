//
//  StagesView.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 1/27/25.
//

import SwiftUI

struct StagesView: View {
    @State var inputText: String = ""
    @State var items: [String] = []
    @State var searchText = ""
    var searchResults: [String] {
            if searchText.isEmpty {
                return items
            } else {
                return items.filter { $0.contains(searchText) }
            }
        }
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText, onCommit: addItem
            )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            List(searchResults, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Rallies")
        }
        .searchable(text: $searchText)
            
    }
        func addItem() {
            guard !inputText.isEmpty else { return }
            items.append(inputText)
            DispatchQueue.main.async {
                inputText = ""
            }
        }
    }

#Preview {
    StagesView()
}


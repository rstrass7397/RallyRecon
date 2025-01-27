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
    var body: some View {
        TextField("Enter text", text: $inputText, onCommit: addItem)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()

        List(items, id: \.self) { item in
            Text(item)
        }

    }
    func addItem() {
            guard !inputText.isEmpty else { return }
            items.append(inputText)
            inputText = ""
        }
}

#Preview {
    StagesView()
}

//
//  CustomInfoMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 5/30/25.
//


import SwiftUI

struct CustomInfoMod: View {
    @Binding var customText: String
    var onSave: (String) -> Void
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Custom Info")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                TextField(text: $customText) {
                    Text("Enter Custom Text")
                }
                .textFieldStyle(.roundedBorder)
                    Button("Save Modifier") {
                        let text = (
                            customText
                        )
                        
                        if !text.isEmpty{
                            onSave(text)
                            dismiss()
                            customText = ""
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                
            }
        }
    }
}

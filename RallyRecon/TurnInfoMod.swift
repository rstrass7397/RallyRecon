//
 //  TurnInfoMod.swift
 //  RallyRecon
 //
 //  Created by Ryan S. Strass on "12"/"13"/"24".
 //
 
import SwiftUI

struct TurnInfoMod: View {
    @Binding var isTrueTurns: [String: Bool]
    @Binding var trueModifiers: [String] // List to store true modifiers for this stage
    @State private var isTrueValuesVisible: Bool = false  // Control visibility of the true values

    var body: some View {
        VStack {
            Text("Choose Turn Modifiers")
                .font(.title)
                .padding()
            
            // Buttons for each modifier
            HStack {
                Button("Left") {
                    toggleModifier(key: "left")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["left"]!))

                Button("Right") {
                    toggleModifier(key: "right")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["right"]!))
            }

            HStack {
                Button("1") {
                    toggleModifier(key: "1")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["1"]!))
                
                Button("2") {
                    toggleModifier(key: "2")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["2"]!))
                
                Button("3") {
                    toggleModifier(key: "3")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["3"]!))
                
                Button("4") {
                    toggleModifier(key: "4")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["4"]!))
                
                Button("5") {
                    toggleModifier(key: "5")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["5"]!))
                
                Button("6") {
                    toggleModifier(key: "6")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["6"]!))
            }

            // Add a button to save and show true values
            Button("Save Modifiers") {
                updateTrueModifiers()
                resetModifiers()
                isTrueValuesVisible.toggle()  // Show true values
            }
            .padding()

            // Display the true values
            if isTrueValuesVisible {
                VStack {
                    Text("Selected Turn Modifiers:")
                        .font(.title2)
                        .padding()

                    ForEach(trueModifiers, id: \.self) { value in
                        Text(value)
                            .font(.headline)
                            .padding(5)
                    }
                }
            }
        }
        .navigationBarTitle("Turn Modifiers", displayMode: .inline)
    }
    
    // Function to toggle modifiers and add to true values list
    private func toggleModifier(key: String) {
        if isTrueTurns[key]! {
            isTrueTurns[key] = false
        } else {
            isTrueTurns[key] = true
        }
    }
    
    // Update the trueModifiers list based on true values
    private func updateTrueModifiers() {
        let selectedModifiers = isTrueTurns.filter { $0.value == true }.map { $0.key }
        trueModifiers.append(contentsOf: selectedModifiers)
    }
    
    // Reset all modifiers to false after saving
    private func resetModifiers() {
        for key in isTrueTurns.keys {
            isTrueTurns[key] = false
        }
    }
}

struct RoundedRectangleButtonStyle: ButtonStyle {
    var isSelected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(isSelected ? .blue : Color.gray)
                            .frame(width: 100, height: 100))
            .foregroundColor(.white)
            .font(.title)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

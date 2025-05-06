
 
import SwiftUI

struct TurnInfoMod: View {
    @Binding var isTrueTurns: [String: Bool]
    var onSave: ([String]) -> Void

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack {
                Text("Turns")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))


                HStack {
                    Button {
                        isTrueTurns["left"] = true
                        isTrueTurns["right"] = false
                    } label: {
                        Text("Left")
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .font(.system(size: 60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns["left"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255)))
                    }
                    
                    Button {
                        isTrueTurns["right"] = true
                        isTrueTurns["left"] = false
                    } label: {
                        Text("Right")
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .font(.system(size: 60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns["right"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255)))
                    }
                }
                
                HStack(spacing: 10) {
                    ForEach(["1", "2", "3", "4", "5", "6"], id: \.self) { num in
                        Button {
                            for i in 1...6 {
                                isTrueTurns["\(i)"] = (num == "\(i)")
                            }
                        } label: {
                            Text(num)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .font(.system(size: 40, weight: .bold))
                                .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[num]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255)))
                        }
                    }
                }

                Button("Save and Return") {
                    let directions = ["left", "right"]
                    let numbers = ["1", "2", "3", "4", "5", "6"]

                    if let selectedDirection = directions.first(where: { isTrueTurns[$0] == true }),
                       let selectedNumber = numbers.first(where: { isTrueTurns[$0] == true }) {
                        onSave([selectedDirection, selectedNumber])
                    }

                    for key in isTrueTurns.keys {
                        isTrueTurns[key] = false
                    }

                    dismiss()
                }
                .frame(width: 300, height: 80)
                .background(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                .cornerRadius(20)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
                .padding(60)
                Button("6") {
                    toggleModifier(key: "6")
                }
                .buttonStyle(RoundedRectangleButtonStyle(isSelected: isTrueTurns["6"]!))
            }

            
            Button("Save Modifiers") {
                updateTrueModifiers()
                resetModifiers()
                isTrueValuesVisible.toggle()
            }
            .padding()

            
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
    
    
    private func toggleModifier(key: String) {
        if isTrueTurns[key]! {
            isTrueTurns[key] = false
        } else {
            isTrueTurns[key] = true
        }
    }
    
    
    private func updateTrueModifiers() {
        let selectedModifiers = isTrueTurns.filter { $0.value == true }.map { $0.key }
        trueModifiers.append(contentsOf: selectedModifiers)
    }
    
   
    private func resetModifiers() {
        for key in isTrueTurns.keys {
            isTrueTurns[key] = false
        }
    }
}


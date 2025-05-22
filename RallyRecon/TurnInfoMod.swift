import SwiftUI

struct TurnInfoMod: View {
    @Binding var isTrueTurns: [String: Bool]
    var onSave: ([String]) -> Void

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
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
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(isTrueTurns["left"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }

                    Button {
                        isTrueTurns["right"] = true
                        isTrueTurns["left"] = false
                    } label: {
                        Text("Right")
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .font(.system(size: 60, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(isTrueTurns["right"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }

                VStack(spacing: 10) {
                    ForEach(1..<7) { i in
                        Button {
                            for j in 1...6 {
                                isTrueTurns["\(j)"] = false
                            }
                            isTrueTurns["\(i)"] = true
                        } label: {
                            Text("\(i)")
                                .frame(width: 75, height: 75)
                                .foregroundColor(.white)
                                .font(.system(size: 50, weight: .bold))
                                .background(
                                    Circle()
                                        .foregroundColor(isTrueTurns["\(i)"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                    }
                }
                .padding()

                Button("Save Modifier") {
                    let turn = isTrueTurns["left"] == true ? "Left" : (isTrueTurns["right"] == true ? "Right" : "")
                    let numberTurn = (1...6).first(where: { isTrueTurns["\($0)"] == true })?.description ?? ""

                    if !turn.isEmpty && !numberTurn.isEmpty {
                        onSave([turn, numberTurn])
                        dismiss()
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
    }
}

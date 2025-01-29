//
//  TurnInfoMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 12/13/24.
//
import SwiftUI

struct TurnInfoMod : View {
    @State var isTrueTurns = ["left": false, "right": false, 1: false, 2: false, 3: false, 4: false, 5: false, 6: false]
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Text("Turns")
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                HStack{
                    Button {
                        isTrueTurns["left"]!.toggle()
                        isTrueTurns["right"] = false
                    } label: {
                        Text("Left")
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns["left"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns["right"]!.toggle()
                        isTrueTurns["left"] = false
                    } label: {
                        Text("Right")
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns["right"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    
                }
                HStack{
                    Button {
                        isTrueTurns[1]!.toggle()
                        isTrueTurns[2] = false
                        isTrueTurns[3] = false
                        isTrueTurns[4] = false
                        isTrueTurns[5] = false
                        isTrueTurns[6] = false
                    } label: {
                        Text("1")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[1]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns[2]!.toggle()
                        isTrueTurns[1] = false
                        isTrueTurns[3] = false
                        isTrueTurns[4] = false
                        isTrueTurns[5] = false
                        isTrueTurns[6] = false
                    } label: {
                        Text("2")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[2]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns[3]!.toggle()
                        isTrueTurns[2] = false
                        isTrueTurns[1] = false
                        isTrueTurns[4] = false
                        isTrueTurns[5] = false
                        isTrueTurns[6] = false
                    } label: {
                        Text("3")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[3]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns[4]!.toggle()
                        isTrueTurns[2] = false
                        isTrueTurns[3] = false
                        isTrueTurns[1] = false
                        isTrueTurns[5] = false
                        isTrueTurns[6] = false
                    } label: {
                        Text("4")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[4]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns[5]!.toggle()
                        isTrueTurns[2] = false
                        isTrueTurns[3] = false
                        isTrueTurns[4] = false
                        isTrueTurns[1] = false
                        isTrueTurns[6] = false
                    } label: {
                        Text("5")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[5]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueTurns[6]!.toggle()
                        isTrueTurns[2] = false
                        isTrueTurns[3] = false
                        isTrueTurns[4] = false
                        isTrueTurns[5] = false
                        isTrueTurns[1] = false
                    } label: {
                        Text("6")
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueTurns[6]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                }
            }
        }
    }
}

#Preview {
    TurnInfoMod()
}


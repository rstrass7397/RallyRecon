//
//  BumpInfoMod.swift
//  RallyRecon
//
//  Created by Amar Setka on 5/30/25.
//


import SwiftUI

struct BumpInfoMod: View {
    @Binding var isTrueBumps: [String: Bool]
    var onSave: ([String]) -> Void
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Bumps")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                VStack{
                    HStack {
                        Button {
                            isTrueBumps["Jump"] = true
                            isTrueBumps["Big Jump"] = false
                            isTrueBumps["Bump"] = false
                            isTrueBumps["Dip"] = false
                        } label: {
                            Text("Jump")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueBumps["Jump"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                        
                        Button {
                            isTrueBumps[""] = false
                            isTrueBumps["Big Jump"] = true
                            isTrueBumps["Bump"] = false
                            isTrueBumps["Dip"] = false
                        } label: {
                            Text("Big Jump")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueBumps["Big Jump"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                    }
                }
                HStack{
                    Button {
                        isTrueBumps["Jump"] = false
                        isTrueBumps["Big Jump"] = false
                        isTrueBumps["Bump"] = true
                        isTrueBumps["Dip"] = false
                    } label: {
                        Text("Bump")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueBumps["Bump"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueBumps["Jump"] = false
                        isTrueBumps["Big Jump"] = false
                        isTrueBumps["Bump"] = false
                        isTrueBumps["Dip"] = true
                    } label: {
                        Text("Dip")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueBumps["Dip"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }
                    Button("Save Modifier") {
                        let straight = (
                            isTrueBumps["Jump"] == true ? "Jump" :
                                isTrueBumps["Big Jump"] == true ? "Big Jump" :
                                isTrueBumps["Bump"] == true ? "Bump" :
                                isTrueBumps["Dip"] == true ? "Dip" : ""
                        )
                        
                        if !straight.isEmpty{
                            onSave([straight])
                            dismiss()
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                
            }
        }
    }
}

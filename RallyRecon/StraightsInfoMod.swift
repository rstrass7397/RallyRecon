//
//  StraightsInfoMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 5/27/25.
//

import SwiftUI

struct StraightsInfoMod: View {
    @Binding var isTrueStraights: [String: Bool]
    var onSave: ([String]) -> Void
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Straights")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                VStack{
                    HStack {
                        Button {
                            isTrueStraights["50"] = true
                            isTrueStraights["100"] = false
                            isTrueStraights["150"] = false
                            isTrueStraights["200"] = false
                        } label: {
                            Text("50")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueStraights["50"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                        
                        Button {
                            isTrueStraights["50"] = false
                            isTrueStraights["100"] = true
                            isTrueStraights["150"] = false
                            isTrueStraights["200"] = false
                        } label: {
                            Text("100")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueStraights["100"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                    }
                }
                HStack{
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"] = false
                        isTrueStraights["150"] = true
                        isTrueStraights["200"] = false
                    } label: {
                        Text("150")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueStraights["150"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"] = false
                        isTrueStraights["150"] = false
                        isTrueStraights["200"] = true
                    } label: {
                        Text("200")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueStraights["200"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }
                    Button("Save Modifier") {
                        let straight = (
                            isTrueStraights["50"] == true ? "50" :
                                isTrueStraights["100"] == true ? "100" :
                                isTrueStraights["150"] == true ? "150" :
                                isTrueStraights["200"] == true ? "200" : ""
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

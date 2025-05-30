//
//  CrestsInfoMod.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 5/30/25.
//

import SwiftUI

struct CrestsInfoMod: View {
    @Binding var isTrueCrests: [String: Bool]
    var onSave: ([String]) -> Void
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Crests")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                VStack{
                    HStack {
                        Button {
                            isTrueCrests["Small Crest"] = true
                            isTrueCrests["Crest"] = false
                            isTrueCrests["Big Crest"] = false
                            isTrueCrests["On Crest"] = false
                            isTrueCrests["Long Crest"] = false
                        } label: {
                            Text("Small Crest")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueCrests["Small Crest"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                        
                        Button {
                            isTrueCrests["Small Crest"] = false
                            isTrueCrests["Crest"] = true
                            isTrueCrests["Big Crest"] = false
                            isTrueCrests["On Crest"] = false
                            isTrueCrests["Long Crest"] = false
                        } label: {
                            Text("Crest")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueCrests["Crest"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                    }
                }
                HStack{
                    Button {
                        isTrueCrests["Small Crest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["Big Crest"] = true
                        isTrueCrests["On Crest"] = false
                        isTrueCrests["Long Crest"] = false
                    } label: {
                        Text("Big Crest")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueCrests["Big Crest"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueCrests["Small Crest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["Big Crest"] = false
                        isTrueCrests["On Crest"] = true
                        isTrueCrests["Long Crest"] = false
                    } label: {
                        Text("On Crest")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueCrests["On Crest"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueCrests["Small Crest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["Big Crest"] = false
                        isTrueCrests["On Crest"] = false
                        isTrueCrests["Long Crest"] = true
                    } label: {
                        Text("Long Crest")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueCrests["Long Crest"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }
                    Button("Save Modifier") {
                        let straight = (
                            isTrueCrests["Small Crest"] == true ? "Small Crest" :
                                isTrueCrests["Crest"] == true ? "Crest" :
                                isTrueCrests["Big Crest"] == true ? "Big Crest" :
                                isTrueCrests["On Crest"] == true ? "On Crest" :
                                isTrueCrests["Long Crest"] == true ? "Long Crest" : ""
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

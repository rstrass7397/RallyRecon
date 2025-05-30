//
//  DurationInfoMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 5/30/25.
//

import SwiftUI

struct DurationsInfoMod: View {
    @Binding var isTrueDurations: [String: Bool]
    var onSave: ([String]) -> Void
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Durations")
                    .font(.system(size: 90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                VStack{
                    HStack {
                        Button {
                            isTrueDurations["Short"] = true
                            isTrueDurations["Long"] = false
                            isTrueDurations["Very Long"] = false
                            isTrueDurations["Extra Long"] = false
                            isTrueDurations["Extremely Long"] = false
                            isTrueDurations["Late"] = false
                            isTrueDurations["Tightens"] = false
                            isTrueDurations["Open"] = false
                            isTrueDurations["Opens and Tightens"] = false
                        } label: {
                            Text("Short")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueDurations["Short"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                        
                        Button {
                            isTrueDurations["Short"] = false
                            isTrueDurations["Long"] = true
                            isTrueDurations["Very Long"] = false
                            isTrueDurations["Extra Long"] = false
                            isTrueDurations["Extremely Long"] = false
                            isTrueDurations["Late"] = false
                            isTrueDurations["Tightens"] = false
                            isTrueDurations["Open"] = false
                            isTrueDurations["Opens and Tightens"] = false
                        } label: {
                            Text("Long")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueDurations["Long"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                        Button {
                            isTrueDurations["Short"] = false
                            isTrueDurations["Long"] = false
                            isTrueDurations["Very Long"] = true
                            isTrueDurations["Extra Long"] = false
                            isTrueDurations["Extremely Long"] = false
                            isTrueDurations["Late"] = false
                            isTrueDurations["Tightens"] = false
                            isTrueDurations["Open"] = false
                            isTrueDurations["Opens and Tightens"] = false
                        } label: {
                            Text("Very Long")
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(isTrueDurations["Very Long"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                                )
                        }
                    }
                }
                HStack{
                    
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = true
                        isTrueDurations["Extremely Long"] = false
                        isTrueDurations["Late"] = false
                        isTrueDurations["Tightens"] = false
                        isTrueDurations["Open"] = false
                        isTrueDurations["Opens and Tightens"] = false
                    } label: {
                        Text("Extra Long")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Extra Long"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = false
                        isTrueDurations["Extremely Long"] = true
                        isTrueDurations["Late"] = false
                        isTrueDurations["Tightens"] = false
                        isTrueDurations["Open"] = false
                        isTrueDurations["Opens and Tightens"] = false
                    } label: {
                        Text("Extremely Long")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Extremely Long"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = false
                        isTrueDurations["Extremely Long"] = false
                        isTrueDurations["Late"] = true
                        isTrueDurations["Tightens"] = false
                        isTrueDurations["Open"] = false
                        isTrueDurations["Opens and Tightens"] = false
                    } label: {
                        Text("Late")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Late"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }
                HStack{
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = false
                        isTrueDurations["Extremely Long"] = false
                        isTrueDurations["Late"] = false
                        isTrueDurations["Tightens"] = true
                        isTrueDurations["Open"] = false
                        isTrueDurations["Opens and Tightens"] = false
                    } label: {
                        Text("Tightens")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Tightens"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = false
                        isTrueDurations["Extremely Long"] = false
                        isTrueDurations["Late"] = false
                        isTrueDurations["Tightens"] = false
                        isTrueDurations["Open"] = true
                        isTrueDurations["Opens and Tightens"] = false
                    } label: {
                        Text("Open")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Open"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                    Button {
                        isTrueDurations["Short"] = false
                        isTrueDurations["Long"] = false
                        isTrueDurations["Very Long"] = false
                        isTrueDurations["Extra Long"] = false
                        isTrueDurations["Extremely Long"] = false
                        isTrueDurations["Late"] = false
                        isTrueDurations["Tightens"] = false
                        isTrueDurations["Open"] = false
                        isTrueDurations["Opens and Tightens"] = true
                    } label: {
                        Text("Opens and Tightens")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(isTrueDurations["Opens and Tightens"] == true ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                            )
                    }
                }
                    Button("Save Modifier") {
                        let Duration = (
                            isTrueDurations["Short"] == true ? "Short" :
                                isTrueDurations["Long"] == true ? "Long" :
                                isTrueDurations["Very Long"] == true ? "Very Long" :
                                isTrueDurations["Extra Long"] == true ? "Extra Long" :
                                isTrueDurations["Extremely Long"] == true ? "Extremely Long" :
                                isTrueDurations["Late"] == true ? "Late" :
                                isTrueDurations["Tightens"] == true ? "Tightens" :
                                isTrueDurations["Open"] == true ? "Open" :
                                isTrueDurations["Opens and Tightens"] == true ? "Opens and Tightens" : ""
                        )
                        
                        if !Duration.isEmpty{
                            onSave([Duration])
                            dismiss()
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                
            }
        }
    }
}

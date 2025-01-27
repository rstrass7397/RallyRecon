//
//  DurationMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 12/13/24.
//

import SwiftUI

struct DurationMod : View {
    @State var isTrueDuration = ["short" : false, "long" : false, "very long" : false, "extremely long" : false, "late" : false, "tightens" : false, "opens" : false]
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Text("Duration")
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                HStack{
                    Button {
                        isTrueDuration["short"]!.toggle()
                        isTrueDuration["long"] = false
                        isTrueDuration["very long"] = false
                        isTrueDuration["extremely long"] = false
                    } label: {
                        Text("Short")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["short"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueDuration["long"]!.toggle()
                        isTrueDuration["short"] = false
                        isTrueDuration["very long"] = false
                        isTrueDuration["extremely long"] = false
                    } label: {
                        Text("Long")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["long"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueDuration["very long"]!.toggle()
                        isTrueDuration["long"] = false
                        isTrueDuration["short"] = false
                        isTrueDuration["extremely long"] = false
                    } label: {
                        Text("Very\nLong")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["very long"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueDuration["extremely long"]!.toggle()
                        isTrueDuration["long"] = false
                        isTrueDuration["very long"] = false
                        isTrueDuration["short"] = false
                    } label: {
                        Text("Extremely\nLong")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["extremely long"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                }
                Button {
                    isTrueDuration["late"]!.toggle()
                } label: {
                    Text("Late")
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:30, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["late"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
                HStack{
                    Button {
                        isTrueDuration["tightens"]!.toggle()
                        isTrueDuration["opens"] = false
                    } label: {
                        Text("Tightens")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["tightens"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueDuration["opens"]!.toggle()
                        isTrueDuration["tightens"] = false
                    } label: {
                        Text("Opens")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:30, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueDuration["opens"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                }
                NavigationLink("Next", destination: DurationMod())
                    .frame(width: 300, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    .padding(100)
            }
        }
    }
}

#Preview {
    DurationMod()
}


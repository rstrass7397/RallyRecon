//
//  StraightsMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 12/13/24.
//
import SwiftUI

struct StraightsMod: View {
    @State var isTrueBumps = ["Jump": false, "BigJump": false,
        "Bump": false, "Dip" : false]
    @State var isTrueStraights = ["50" : false, "100" : false, "150" : false, "200" : false, "Into" : false]
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Text("Straights")
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                HStack{
                    
                    Button {
                        isTrueStraights["50"]!.toggle()
                        isTrueStraights["100"] = false
                        isTrueStraights["150"] = false
                        isTrueStraights["200"] = false
                        isTrueStraights["Into"] = false
                    } label: {
                        Text("50")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueStraights["50"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"]!.toggle()
                        isTrueStraights["150"] = false
                        isTrueStraights["200"] = false
                        isTrueStraights["Into"] = false
                    } label: {
                        Text("100")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueStraights["100"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"] = false
                        isTrueStraights["150"]!.toggle()
                        isTrueStraights["200"] = false
                        isTrueStraights["Into"] = false
                    } label: {
                        Text("150")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueStraights["150"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"] = false
                        isTrueStraights["150"] = false
                        isTrueStraights["200"]!.toggle()
                        isTrueStraights["Into"] = false
                    } label: {
                        Text("200")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueStraights["200"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueStraights["50"] = false
                        isTrueStraights["100"] = false
                        isTrueStraights["150"] = false
                        isTrueStraights["200"] = false
                        isTrueStraights["Into"]!.toggle()
                    } label: {
                        Text("Into")
                            .frame(width: 150, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueStraights["Into"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                }
                Text("Bumps")
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                HStack{
                    Button {
                    isTrueBumps["Jump"]!.toggle()
                    isTrueBumps["BigJump"] = false
                    isTrueBumps["Bump"] = false
                    isTrueBumps["Dip"] = false
                } label: {
                    Text("Jump")
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:50, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(isTrueBumps["Jump"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueBumps["BigJump"]!.toggle()
                    isTrueBumps["Jump"] = false
                    isTrueBumps["Bump"] = false
                    isTrueBumps["Dip"] = false
                } label: {
                    Text("Big Jump")
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:50, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(isTrueBumps["BigJump"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueBumps["Bump"]!.toggle()
                    isTrueBumps["Jump"] = false
                    isTrueBumps["BigJump"] = false
                    isTrueBumps["Dip"] = false
                } label: {
                    Text("Bump")
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:50, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(isTrueBumps["Bump"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueBumps["Dip"]!.toggle()
                    isTrueBumps["Jump"] = false
                    isTrueBumps["Bump"] = false
                    isTrueBumps["BigJump"] = false
                } label: {
                    Text("Dip")
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:50, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(isTrueBumps["Dip"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
                    
                }
            }
           
        }
    }
}

#Preview {
    StraightsMod()
}


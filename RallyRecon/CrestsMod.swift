//
//  CrestsMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 12/13/24.
//
import SwiftUI

struct CrestsMod : View {
    @State var isTrueCrests = ["SmallCrest": false, "Crest": false,
    "BigCrest": false, "OnCrest": false, "LongCrest": false]
    var body : some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Text("Crests")
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                HStack{
                    Button {
                        isTrueCrests["SmallCrest"]!.toggle()
                        isTrueCrests["Crest"] = false
                        isTrueCrests["BigCrest"] = false
                        isTrueCrests["OnCrest"] = false
                        isTrueCrests["LongCrest"] = false
                    } label: {
                        Text("Small Crest")
                            .frame(width: 200, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:50, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(isTrueCrests["SmallCrest"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                            
                    }
                    Button {
                        isTrueCrests["Crest"]!.toggle()
                        isTrueCrests["SmallCrest"] = false
                        isTrueCrests["BigCrest"] = false
                        isTrueCrests["OnCrest"] = false
                        isTrueCrests["LongCrest"] = false
                    } label: {
                        Text("Crest")
                            .frame(width: 200, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:50, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(isTrueCrests["Crest"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueCrests["BigCrest"]!.toggle()
                        isTrueCrests["SmallCrest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["OnCrest"] = false
                        isTrueCrests["LongCrest"] = false
                    } label: {
                        Text("Big Crest")
                            .frame(width: 200, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:50, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(isTrueCrests["BigCrest"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    
                }
                HStack{
                    Button {
                        isTrueCrests["OnCrest"]!.toggle()
                        isTrueCrests["SmallCrest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["BigCrest"] = false
                        isTrueCrests["LongCrest"] = false
                    } label: {
                        Text("On Crest")
                        .frame(width: 200, height: 150)
                        .foregroundColor(.white)
                        .font(.system(size:50, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(isTrueCrests["OnCrest"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    Button {
                        isTrueCrests["LongCrest"]!.toggle()
                        isTrueCrests["SmallCrest"] = false
                        isTrueCrests["Crest"] = false
                        isTrueCrests["BigCrest"] = false
                        isTrueCrests["OnCrest"] = false
                    } label: {
                        Text("Long Crest")
                            .frame(width: 200, height: 150)
                            .foregroundColor(.white)
                            .font(.system(size:50, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(isTrueCrests["LongCrest"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                            
                    }
                       
                }
                HStack{
                    NavigationLink("Next", destination: CrestsMod())
                        .frame(width: 300, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:40, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                        .padding(60)
                }
              
            }
        }
       
    }
}
#Preview {
    CrestsMod()
}



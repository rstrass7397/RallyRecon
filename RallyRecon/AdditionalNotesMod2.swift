//
//  AdditionalNotesMod2.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 1/14/25.
//

import SwiftUI

struct AdditionalNotesMod2: View {
    @State var isTrueNotes = ["SLP": false, "RUF": false, "Stay L": false, "Stay R": false, "Thru": false, "!": false, "!!": false, "!!!": false]
    var body: some View {
        
        
        HStack {
            VStack(alignment: .center , spacing: 30) {
                
                Button {
                    isTrueNotes["SLP"]!.toggle()
                } label: {
                    Text("SLP")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["SLP"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["RUF"]!.toggle()
                } label: {
                    Text("RUF")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["RUF"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["Stay L"]!.toggle()
                } label: {
                    Text("Stay L")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["Stay L"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["Stay R"]!.toggle()
                } label: {
                    Text("Stay R")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["Stay R"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
            }
            
            VStack(alignment: .center , spacing: 30) {
                
                Button {
                    isTrueNotes["Thru"]!.toggle()
                } label: {
                    
                    Text("Thru")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["Thru"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["!"]!.toggle()
                } label: {
                    Text("!")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["!!"]!.toggle()
                } label: {
                    Text("!!")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["!!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
                
                Button {
                    isTrueNotes["!!!"]!.toggle()
                } label: {
                    Text("!!!")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["!!!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
            }
        }
    }
}

#Preview {
    AdditionalNotesMod2()
}


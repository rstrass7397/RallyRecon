//
//  AdditionalNotesMod2.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 1/14/25.
//

import SwiftUI

struct AdditionalNotesMod2: View {
    @State var isTrueNotes2 = ["SLP": false, "RUF": false, "Stay L": false, "Stay R": false, "Thru": false, "!": false, "!!": false, "!!!": false]
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            
            HStack {
                VStack(alignment: .center , spacing: 30) {
                    
                    Button {
                        isTrueNotes2["SLP"]!.toggle()
                    } label: {
                        Text("SLP")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["SLP"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueNotes2["RUF"]!.toggle()
                    } label: {
                        Text("RUF")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["RUF"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueNotes2["Stay L"]!.toggle()
                    } label: {
                        Text("Stay L")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["Stay L"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueNotes2["Stay R"]!.toggle()
                    } label: {
                        Text("Stay R")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["Stay R"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                }
                
                VStack(alignment: .center , spacing: 30) {
                    
                    Button {
                        isTrueNotes2["Thru"]!.toggle()
                    } label: {
                        
                        Text("Thru")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["Thru"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueNotes2["!"]!.toggle()
                    } label: {
                        Text("!")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                    Button {
                        isTrueNotes2["!!"]!.toggle()
                    } label: {
                        Text("!!")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["!!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    }
                    
                    Button {
                        isTrueNotes2["!!!"]!.toggle()
                    } label: {
                        Text("!!!")
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .font(.system(size:60, weight: .bold))
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes2["!!!"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                        
                    }
                }
            }
        }
    }
}

#Preview {
    AdditionalNotesMod2()
}

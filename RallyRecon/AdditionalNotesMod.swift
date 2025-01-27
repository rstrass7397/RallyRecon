//
//  AdditionalNotesMod.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 12/13/24.
//

import SwiftUI

struct AdditionalNotesMod: View {
    @State var isTrueNotes = ["/ or U": false, "?": false, "][": false, "JCT": false, "past JCT": false, "D.C.": false, "NAR": false, "O.C.": false]
    var body: some View {
        
        
        HStack {
            VStack(alignment: .center , spacing: 20) {
                
                Button {
                    isTrueNotes["/ or U"]!.toggle()
                } label: {
                    Text("/ or U")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["/ or U"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["?"]!.toggle()
                } label: {
                    Text("?")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["?"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["]["]!.toggle()
                } label: {
                    Text("][")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["]["]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["JCT"]!.toggle()
                } label: {
                    Text("JCT")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["JCT"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
            }
            
            VStack(alignment: .center , spacing: 20) {
                
                Button {
                    isTrueNotes["past JCT"]!.toggle()
                } label: {
                    Text("past JCT")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["past JCT"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["D.C."]!.toggle()
                } label: {
                    
                    Text("D.C.")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["D.C."]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["NAR"]!.toggle()
                } label: {
                    Text("NAR")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["NAR"]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                    
                }
                Button {
                    isTrueNotes["O.C."]!.toggle()
                } label: {
                    Text("O.C.")
                        .frame(width: 300, height: 300)
                        .foregroundColor(.white)
                        .font(.system(size:60, weight: .bold))
                        .background(RoundedRectangle(cornerRadius: 30).foregroundColor(isTrueNotes["O.C."]! ? .blue : Color(red: 17 / 255, green: 51 / 255, blue: 95/255)))
                }
            }
        }
    }
}


#Preview {
    AdditionalNotesMod()
}


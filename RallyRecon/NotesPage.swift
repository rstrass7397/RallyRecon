//
//  NotesPage.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/6/25.
//

import SwiftUI

struct NotesPage: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                VStack{
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("Notes Placeholder")
                        .frame(width: 1000, height: 100, alignment: .top)
                        .font(.system(size:90, weight: .bold))
                        .padding(.bottom, 150)
                        .padding(.top, -50)
                        .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    
                    
                    
                    NavigationLink("New Note", destination: ModifierHub())
                        .frame(width: 300, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:40, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    Button{
                        
                    } label: {
                        Text("Save Note")
                            .frame(width: 300, height: 80)
                            .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                            .cornerRadius(20)
                            .font(.system(size:40, weight: .bold))
                            .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                            .padding(20)
                    }
                    NavigationLink("Go To Saved Rallies", destination: StagesView())
                        .frame(width: 400, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:40, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    
                    
                }
                
            }
        }
    }
}
    
#Preview {
    NotesPage()
}

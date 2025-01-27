//
//  CreateARally.swift
//  RallyRecon
//
//  Created by Ananya Maru on 1/16/25.
//
import SwiftUI

struct SavingStageAfterInfoEntered: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                VStack{
                    Image("AppLogo")
                        .resizable()
                        .frame(width: 450.0, height: 450.0)
                    
                    NavigationLink("Save Final Track", destination: ContentView())
                        .frame(width: 400, height: 90)
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
    SavingStageAfterInfoEntered()
}


//
//  HomePage.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 5/6/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Image("AppLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                    Text("Welcome to RallyRecon")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    
                    NavigationLink(destination: RallyListView()) {
                        Text("Main Menu")
                            .font(.headline)
                            .foregroundColor(Color(red: 245/255, green: 245/255, blue: 220/255))
                            .padding()
                            .frame(maxWidth: 200)
                            .background(Color(red: 17/255, green: 51/255, blue: 95/255))
                            .cornerRadius(12)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}

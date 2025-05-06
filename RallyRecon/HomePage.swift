//
//  HomePage.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 5/6/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
            
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

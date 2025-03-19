//
//  DisplayARally.swift
//  RallyRecon
//
//  Created by Amar Setka on 3/19/25.
//

import SwiftUI

struct DisplayARally: View {
    @Binding var currentRally: String
    @State var rallies: [String] = []
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Text("Rallies")
                .frame(width: 1000, height: 100, alignment: .top)
                .font(.system(size:70, weight: .bold))
                .padding(30)
                .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
           
            List {
                ForEach(rallies,id: \.self){ currentRally  in
                    NavigationLink {
                        Text(currentRally)
                    } label: {
                        Text(currentRally)
                    }
                }
            }
            .frame(width: 800, height: 900)
            .background( Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
            
            
            
        }
    }
}


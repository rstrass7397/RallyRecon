//
//  CreateARally.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 12/11/24.
//

import SwiftUI

struct CreateARally: View {
    @State var RallyName = ""
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Text("Enter The Rally Name")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                TextField("Enter Rally Name", text: $RallyName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .font(.largeTitle)
                NavigationLink("Next", destination: CreateAStage())
                    .frame(width: 300, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .position(x: 410, y: 80)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
            }
        }
       
    }
}
#Preview {
    CreateARally()
}


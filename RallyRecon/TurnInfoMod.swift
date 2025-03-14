//
////  TurnInfoMod.swift
////  RallyRecon
////
////  Created by Ryan S. Strass on 12/13/24.
//
//import SwiftUI
//
//struct TurnInfoMod : View {
//
//    @ObservedObject var turnInfoModel: RallyViewModel main
//    var body: some View {
//        
//        ZStack{
//            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .ignoresSafeArea()
//            VStack{
//                Text("Turns")
//                    .font(.system(size:90, weight: .bold))
//                    .padding(30)
//                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                
//                
//                HStack{
//                    Button {
//                        turnInfoModel.turnDirection = "Left"
//                    } label: {
//                        Text("Left")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        turnInfoModel.turnDirection = "Right"
//                    } label: {
//                        Text("Right")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                }
//                
//                HStack{
//                    Button {
//                        turnInfoModel.turnSharpness = 1
//                    } label: {
//                        Text("1")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        turnInfoModel.turnSharpness = 2
//                    } label: {
//                        Text("2")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        rallyViewModel.turnSharpness = 3
//                    } label: {
//                        Text("3")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        turnInfoModel.turnSharpness = 4
//                    } label: {
//                        Text("4")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        turnInfoModel.turnSharpness = 5
//                    } label: {
//                        Text("5")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//                    
//                    Button {
//                        turnInfoModel.turnSharpness = 6
//                    } label: {
//                        Text("6")
//                            .frame(width: 300, height: 300)
//                            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
//                            .font(.system(size:60, weight: .bold))
//                            .background(RoundedRectangle(cornerRadius: 30))
//                    }
//
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    turnInfoModel()
//}
//
//

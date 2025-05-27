import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Main Menu")
                    .font(.largeTitle)

                NavigationLink("Enter Rallies") {
                    RallyListView()
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Welcome")
        }
    }
}








////
////  HomePage.swift
////  RallyRecon
////
////  Created by Ananya A. Maru on 5/6/25.
////
//
//import SwiftUI
//
//struct HomeView: View {
//    @State private var isMenuOpen = false
//    @State private var rallyName: String = ""
//    @State private var rallies: [Rally] = PersistenceManager.loadRallies()
//
//    var body: some View {
//        NavigationStack {
//            ZStack {
//
//                Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
//                    .ignoresSafeArea()
//
//
//                VStack(spacing: 20) {
//                    HStack {
//                        Button(action: {
//                            withAnimation {
//                                isMenuOpen.toggle()
//                            }
//                        }) {
//                            Image(systemName: "line.horizontal.3")
//                                .font(.title)
//                                .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
//                                .padding()
//                        }
//                        Spacer()
//                    }
//
//                    Spacer()
//
//                    Image("AppLogo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 200, height: 200)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//
//                    Text("Welcome to RallyRecon")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
//                        .padding()
//
//                    Spacer()
//                }
//                .padding()
//
//
//                if isMenuOpen {
//                    SideMenu(
//                        isOpen: $isMenuOpen,
//                        rallyName: $rallyName,
//                        rallies: $rallies
//                    )
//                    .transition(.move(edge: .leading))
//                }
//            }
//        }
//    }
//}
//
//struct SideMenu: View {
//    @Binding var isOpen: Bool
//    @Binding var rallyName: String
//    @Binding var rallies: [Rally]
//
//    var body: some View {
//        ZStack(alignment: .leading) {
//
//            Color.black.opacity(0.3)
//                .ignoresSafeArea()
//                .onTapGesture {
//                    withAnimation {
//                        isOpen = false
//                    }
//                }
//
//
//            VStack(alignment: .trailing, spacing: 20) {
//                Text("Rallies")
//                    .font(.title)
//                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
//                    .padding()
//                List(rallies, id: \.name) { rally in
//                    NavigationLink(destination: StageListView(rally: rally, stages: $rallies.first(where: { $0.id == rally.id })!.stages)) {
//                        Text(rally.name)
//
//                    }
//                }
//                .navigationBarItems(leading: NavigationLink("Add Rally", destination: AddRallyView()))
//
//                Spacer()
//            }
//            .padding()
//            .frame(width: 300)
//            .background(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
//            .edgesIgnoringSafeArea(.vertical)
//        }
//    }
//}
//#Preview {
//    HomeView()
//}

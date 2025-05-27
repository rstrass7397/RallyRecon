import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.creme
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    VStack(spacing: 30) {
                        Image("AppLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 20))

                        VStack(spacing: 30) {
                            Text("RallyRecon")
                                .font(.system(size: 48, weight: .bold))
                                .foregroundColor(.navy)

                            NavigationLink("Enter Rallies") {
                                RallyListView()
                            }
                            .padding()
                            .frame(width: 240, height: 60)
                            .background(Color.navy)
                            .foregroundColor(.creme)
                            .cornerRadius(15)
                            .font(.title2)
                        }
                        .offset(y: -50)
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    MainMenuView()
        .environmentObject(RallyManager.shared)
}


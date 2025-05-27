import SwiftUI

struct MainMenuView: View {
    var body: some View {
            NavigationStack {
                ZStack {
                    Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                        .ignoresSafeArea()
                VStack(spacing: 20) {
                    Image("AppLogo")
                        .resizable()
                        .frame(width: 300, height: 300)
                    Text("Main Menu")
                        .font(.largeTitle)
                        .foregroundColor(.navy)
                        .fontWeight(.bold)
                    
                    NavigationLink("Enter Rallies") {
                        RallyListView()
                    }
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(.creme)
                    .frame(width: 250, height: 60)
                    .background(Color.navy)
                    .cornerRadius(20)
                }
                .navigationTitle("Welcome")
            }
        }
    }
}
#Preview{
    MainMenuView()
}

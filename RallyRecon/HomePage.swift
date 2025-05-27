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

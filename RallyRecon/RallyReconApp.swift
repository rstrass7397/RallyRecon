import SwiftUI

@main
struct RallyReconApp: App {
    @StateObject var rallyManager = RallyManager.shared

    var body: some Scene {
        WindowGroup {
            RallyListView()
                .environmentObject(rallyManager)
        }
    }
}

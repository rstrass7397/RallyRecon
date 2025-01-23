//
//  RallyReconApp.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 1/23/25.
//

import SwiftUI
import Firebase

@main
struct RallyReconApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

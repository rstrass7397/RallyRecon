//
//  RallySheetView.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 5/2/25.
//

import SwiftUI
import SwiftData

struct OnboardingView: View {
    var body: some View {
        TabView {
            OB1View()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    OnboardingView()
}
struct OB1View: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).fill(.green.gradient)
            VStack {
                Text("Learn to fix a motorcycle").font(.title)
                Image(systemName: "gearshape").imageScale(.large).padding()
            
            }
        }
    }
}

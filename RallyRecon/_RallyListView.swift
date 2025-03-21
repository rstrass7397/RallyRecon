//
//  _RallyListView.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 3/19/25.
//

import SwiftUI

struct RallyListView: View {
    @State var rallies: [Rally] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Rallies")
                    .font(.largeTitle)
                    .padding()
                
                List(rallies, id: \.name) { rally in
                    NavigationLink(destination: StageListView(rally: rally)) {
                        Text(rally.name)
                    }
                }
                .navigationBarItems(trailing: NavigationLink("Add Rally", destination: AddRallyView(rallies: $rallies)))
            }
        }
    }
}

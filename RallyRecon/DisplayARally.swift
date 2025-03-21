//
//  DisplayARally.swift
//  RallyRecon
//
//  Created by Amar Setka on 3/19/25.
//

import SwiftUI

struct DisplayARally: View {
    @Binding var currentRally: String
    @State private var rallies: [String] = []

    var body: some View {
        ZStack {
            Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack {
                Text("Rallies")
                    .font(.system(size: 70, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95 / 255))
                
                List {
                    ForEach(rallies, id: \.self) { rally in
                        NavigationLink {
                            Text(rally)
                        } label: {
                            Text(rally)
                        }
                    }
                    .onDelete(perform: deleteRally) // Swipe to delete
                }
                .frame(width: 800, height: 600)
                .background(Color(red: 248 / 255, green: 248 / 255, blue: 238 / 255))
                
                Button("Add Rally") {
                    addRally()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .onAppear {
            loadRallies()
        }
    }
    
    func addRally() {
        let newRally = "Rally \(rallies.count + 1)"
        rallies.append(newRally)
        saveRallies()
    }
    
    func deleteRally(at offsets: IndexSet) {
        rallies.remove(atOffsets: offsets)
        saveRallies()
    }
    
    func saveRallies() {
        UserDefaults.standard.set(rallies, forKey: "savedRallies")
    }
    
    func loadRallies() {
        if let saved = UserDefaults.standard.array(forKey: "savedRallies") as? [String] {
            rallies = saved
        }
    }
}


//
//  ModHub.swift
//  RallyRecon
//
//  Created by Ryan S. Strass on 5/27/25.
//

import SwiftUI

struct ModHub: View {
    @EnvironmentObject var rallyManager: RallyManager
    
    let rallyID: UUID
    let stageID: UUID
    
    var rallyIndex: Int? {
        rallyManager.rallies.firstIndex(where: { $0.id == rallyID })
    }
    
    var stageIndex: Int? {
        if let rallyIndex = rallyIndex {
            return rallyManager.rallies[rallyIndex].stages.firstIndex(where: { $0.id == stageID })
        }
        return nil
    }
    
    @State private var showTurnInfo = false
    @State private var isTrueTurns: [String: Bool] = [
        "left": false, "right": false,
        "1": false, "2": false, "3": false,
        "4": false, "5": false, "6": false
    ]
    @State private var showStraightsInfo = false
    @State private var isTrueStraights: [String: Bool] = [
        "50": false, "100": false, "150": false, "200": false
    ]
    @State private var showDurationsInfo = false
    @State private var isTrueDurations: [String: Bool] = [
        "Short": false, "Long": false, "Very Long": false, "Extra Long": false, "Extremely Long": false, "Late": false, "Tightens": false, "Open": false, "Opens and Tightens": false
]
    @State private var showBumpsInfo = false
    @State private var isTrueBumps: [String: Bool] = [
        "Jump": false, "Big Jump": false, "Bump": false, "Dip": false
    ]
    var body: some View {
        Button("Add Turn") {
            showTurnInfo.toggle()
        }
        .padding()
        .buttonStyle(.bordered)
        .sheet(isPresented: $showTurnInfo) {
            TurnInfoMod(isTrueTurns: $isTrueTurns) { selectedModifier in
                let modifierString = "\(selectedModifier[0]), \(selectedModifier[1])"
                rallyManager.addModifier(to: rallyID, stageID: stageID, modifier: modifierString)
                resetSelections()
            }
        }
        
    
        Button("Add Straight") {
            showStraightsInfo.toggle()
        }
        .padding()
        .buttonStyle(.bordered)
        .sheet(isPresented: $showStraightsInfo) {
            StraightsInfoMod(isTrueStraights: $isTrueStraights) { selectedModifier in
                let modifierString = "\(selectedModifier[0])"
                rallyManager.addModifier(to: rallyID, stageID: stageID, modifier: modifierString)
                resetSelections()
            }
        }
        Button("Add Bump") {
            showBumpsInfo.toggle()
        }
        .padding()
        .buttonStyle(.bordered)
        .sheet(isPresented: $showBumpsInfo) {
            BumpInfoMod(isTrueBumps: $isTrueBumps) { selectedModifier in
                let modifierString = "\(selectedModifier[0])"
                rallyManager.addModifier(to: rallyID, stageID: stageID, modifier: modifierString)
                resetSelections()
            }
        }
        
        Button("Add Duration") {
            showDurationsInfo.toggle()
        }
        .padding()
        .buttonStyle(.bordered)
        .sheet(isPresented: $showDurationsInfo) {
                DurationsInfoMod(isTrueDurations: $isTrueDurations) { selectedModifier in
                let modifierString = "\(selectedModifier[0])"
                rallyManager.addModifier(to: rallyID, stageID: stageID, modifier: modifierString)
                resetSelections()
            }
        }
    }
    
    
    private func resetSelections() {
        for key in isTrueTurns.keys {
            isTrueTurns[key] = false
        }
    }
}

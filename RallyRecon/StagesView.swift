//
//  StagesView.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 1/27/25.
//
import Firebase
import SwiftUI
import FirebaseFirestore

struct StagesView: View {
    @FirestoreQuery(collectionPath: "Rallies/Test Rally/Stages") var stages: [Stage]
    @State var inputText: String = ""
    @State var items: [String] = []
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText, onCommit: addStage
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
            
            NavigationLink("View Saved Rallies", destination: SavedRallys())
                .foregroundColor(.black)
            
            List(stages, id: \.self) { stage in
                    Text(stage.name)
                        .font(.title)
                
            }
            .navigationTitle("Stages")
        }
        .font(.title)
        
    }
    func addStage() {
        let newStage = Stage(name: inputText)
        DispatchQueue.main.async {
            inputText = ""
        }
        let dataBase = Firestore.firestore()
        dataBase
            .collection("Rallies")
            .document("Test Rally")
            .collection("Stages")
            .document(newStage.name)
            .setData(["name":newStage.name])
    }
    
}
#Preview {
    StagesView()
}


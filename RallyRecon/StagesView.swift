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
    //    @State var searchText = ""
    //    var searchResults: [Stage] {
    //            if searchText.isEmpty {
    //                return stages
    //            } else {
    //                return stages.filter { item in item.name.contains(searchText) }
    //            }
    //        }
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText, onCommit: addStage
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .font(.title)
            
            NavigationLink("Edit", destination: CreateARally())
                .foregroundStyle(.black)
                .font(.title)
            
            List(stages, id: \.self) { stage in
                    Text(stage.name)
                        .font(.title)
            }
            .onChange(of: stages) { newStages in
                print("Stages updated: \(newStages)")
            }
            .navigationTitle("Stages")
        }
//        .searchable(text: $searchText)
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


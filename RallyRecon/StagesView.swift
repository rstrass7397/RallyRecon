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
    @FirestoreQuery(collectionPath: "Test") var tests: [Test]
    @State var inputText: String = ""
    @State var items: [String] = []
    @State var searchText = ""
    var searchResults: [Test] {
            if searchText.isEmpty {
                return tests
            } else {
                return tests.filter { item in item.name.contains(searchText) }
            }
        }
    var body: some View {
        NavigationStack {
            TextField("Enter text", text: $inputText, onCommit: addItem
            )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.title)
            
            NavigationLink("Edit", destination: CreateARally())
                .foregroundStyle(.black)
                .font(.title)

            List(searchResults, id: \.self) { item in
                NavigationLink {
                    Text(item.name)
                        .font(.title)
                    List{
                        Text("1")
                            .font(.title)
                        Text("2")
                            .font(.title)
                        Text("3")
                            .font(.title)
                    }
                } label: {
                    Text(item.name)
                        .font(.title)
                }
            }
            .navigationTitle("Rallies")
        }
        .searchable(text: $searchText)
        .font(.title)

    }
        func addItem() {
            let newTest = Test(name: inputText)
            DispatchQueue.main.async {
                inputText = ""
            }
            let dataBase = Firestore.firestore()
            dataBase.collection("Test").document(newTest.name).setData(["name":newTest.name])
        }
    }

#Preview {
    StagesView()
}


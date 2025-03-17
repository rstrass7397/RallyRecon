//
//  EditPaceNotes.swift
//  RallyRecon
//
//  Created by Ananya A. Maru on 3/17/25.
// This is the view that pop ups when users press on the edit button.

import SwiftUI
import SwiftData

struct EditPaceNotes: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Edit PaceNotes")
                    .frame(width: 1000, height: 100, alignment: .top)
                    .font(.system(size:90, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                Image("AppLogo")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                
                }
            }
        }
    }
#Preview {
    EditPaceNotes()
}

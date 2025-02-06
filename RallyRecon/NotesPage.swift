//
//  NotesPage.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 2/6/25.
//

import SwiftUI

struct NotesPage: View {
    var body: some View {
        Text("Note Placeholder")
            .frame(width: 1000, height: 100, alignment: .top)
            .font(.system(size:90, weight: .bold))
            .padding(.bottom, 150)
            .padding(.top, -50)
            .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
    }
}

#Preview {
    NotesPage()
}

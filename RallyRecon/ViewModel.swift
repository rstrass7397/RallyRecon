//
//  ViewModel.swift
//  RallyRecon
//
//  Created by Olivier Zdunczyk on 3/7/25.
//

import SwiftUI
import Firebase
import FirebaseFirestore

class RallyViewModel: ObservableObject {
    @Published var rallies: [Rally] = []
}

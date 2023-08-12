//
//  AppState.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI
import Combine

class AppState: ObservableObject {
    static let shared = AppState()
    
    @Published var isAuthed: Bool = false
}

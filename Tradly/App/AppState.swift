//
//  AppState.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI
import Combine

class AppState: ObservableObject {
    
    @Published var sceneState: AppSceneState = .onboard
    
    init() {
        if UserContext.isOnboarded {
            sceneState = UserContext.isAuthed ? .root : .login
        } else {
            sceneState = .onboard
        }
    }
    
    func switchToLogin() {
        UserContext.isOnboarded = true
        UserContext.isAuthed = false
        withAnimation {
            sceneState = .login
        }
    }
    
    func switchToRoot() {
        UserContext.isAuthed = true
        withAnimation {
            sceneState = .root
        }
    }

}

enum AppSceneState {
    case onboard
    case login
    case root
}

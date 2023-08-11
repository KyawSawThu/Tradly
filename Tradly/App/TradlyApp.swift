//
//  TradlyApp.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import UIKit
import SwiftUI

@main
struct TradlyApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

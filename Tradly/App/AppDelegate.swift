//
//  AppDelegate.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        configureAppearance()
        return true
    }
    
    private func configureAppearance() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = .white
//        UITabBar.appearance().tintColor = UIColor(named: "ColorGreen")
//        UITabBar.appearance().barTintColor = UIColor(named: "ColorGreen")
//        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "ColorGrey")
        
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "JetBrainsMono-Bold", size: 10)!
        ]
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "JetBrainsMono-Bold", size: 10)!
        ]

        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
    }
}

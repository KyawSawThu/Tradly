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
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont(name: "Montserrat-Bold", size: 10)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont(name: "Montserrat-Bold", size: 10)!], for: .selected)
    }
}

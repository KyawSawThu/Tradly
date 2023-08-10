//
//  OnboardingData.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import Foundation

struct OnboardingData {
    let image: String
    let title: String
    
    static let data: [OnboardingData] = [
        .init(image: "splash.first", title: "Empowering Artisans, Farmers & Micro Business"),
        .init(image: "splash.second", title: "Connecting NGOs, Social Enterprises with Communities"),
        .init(image: "splash.third", title: " Donate, Invest & Support infrastructure projects")
    ]
}

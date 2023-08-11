//
//  LaunchView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import SwiftUI

struct LaunchView: View {
    //MARK: - PROPERTIES
    @State private var presentOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                Color.colorGreen
                    .ignoresSafeArea()
                VStack {
                    Image("tradly.logo")
                        .frame(width: 126, height: 126, alignment: .center)
                    Text("Tradly")
                        .font(.mM30)
                        .foregroundColor(Color.white)
                } //: VSTACK
            } //: ZSTACK
        } //: NAVGATION
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { _ in
                presentOnboarding = true
            }
        }
        .fullScreenCover(isPresented: $presentOnboarding) {
            print("Dismiss!")
        } content: {
            OnboardingView()
        }

    }
}

//MARK: - PREVIEW
struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

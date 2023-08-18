//
//  LaunchView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import SwiftUI

struct LaunchView: View {
    //MARK: - PROPERTIES
    @State private var launchDone: Bool = false
    @EnvironmentObject private var appState: AppState
    
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
                        .font(.jbM30)
                        .foregroundColor(Color.white)
                } //: VSTACK
            } //: ZSTACK
        } //: NAVGATION
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { _ in
                launchDone = true
            }
        }
        .fullScreenCover(isPresented: $launchDone) {
            switch appState.sceneState {
            case .onboard: OnboardingView()
            case .login: LoginView(viewModel: LoginViewModel())
            case .root: RootView()
            }
        }

    }
}

//MARK: - PREVIEW
struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

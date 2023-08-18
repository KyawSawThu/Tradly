//
//  LoginView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/10/23.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject private var appState: AppState
    @ObservedObject var viewModel: LoginViewModel
    @State private var showAlert: Bool = false
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var titleView: some View {
        VStack(spacing: 36) {
            Text("Welcome to Tradly")
                .font(.jbM24)
                .foregroundColor(.white)
            
            Text("Login to your account")
                .font(.jbR16)
                .foregroundColor(.white)
        }
    }
    
    private var formView: some View {
        VStack(spacing: 16) {
            PrimaryTextField(text: $viewModel.mobile, placeholder: "Mobile Number")
            PrimaryTextField(text: $viewModel.password, placeholder: "Password")
        }
    }
    
    private var footerView: some View {
        VStack(spacing: 32) {
            Button {
                viewModel.login()
                appState.switchToRoot()
            } label: {
                PrimaryButtonView(title: "Login")
            }
            
            Button {
//                print("forgot")
                showAlert = true
            } label: {
                Text("Forgot your password?")
                    .font(.jbR18)
                    .foregroundColor(.white)
            }
            
            NavigationLink {
                SignUpView()
            } label: {
                Text("Don’t have an account? ")
                    .font(.jbR18)
                    .foregroundColor(.white)
                +
                Text("Sign up")
                    .font(.jbB18)
                    .foregroundColor(.white)
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                VStack(spacing: 0) {
                    titleView
                        .padding(.bottom, 32)
                    formView
                        .padding(.bottom, 38)
                    footerView
                } // VSTACK
                .padding(.horizontal, 32)
            } //: ZSTACK
            .alert(
                title: "Success",
                message: "Your account is successfully created. You can start creating amazing store.",
                isPresented: $showAlert
            )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: .init())
    }
}

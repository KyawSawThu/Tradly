//
//  SignUpView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/10/23.
//

import SwiftUI

struct SignUpView: View {
    // MARK: - PROPERTIES
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var mobile: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @Environment(\.presentationMode) var presentationMode
    
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
            Text("Signup your account")
                .font(.jbR16)
                .foregroundColor(.white)
        }
    }
    
    private var formView: some View {
        VStack(spacing: 16) {
            PrimaryTextField(text: $firstName, placeholder: "First Name")
            PrimaryTextField(text: $lastName, placeholder: "Last Name")
            PrimaryTextField(text: $mobile, placeholder: "Mobile Number")
            PrimaryTextField(text: $password, placeholder: "Password")
            PrimaryTextField(text: $confirmPassword, placeholder: "Re-enter Password")
        }
    }
    
    private var footerView: some View {
        VStack(spacing: 38) {
            NavigationLink {
                RequestOTPView()
            } label: {
                PrimaryButtonView(title: "Create")
            }

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Have an account? ")
                    .font(.jbR18)
                    .foregroundColor(.white)
                +
                Text("Sign in")
                    .font(.jbB18)
                    .foregroundColor(.white)
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "", style: .secondary)
                    .padding(.horizontal, 12)
                VStack(spacing: 0) {
                    Spacer()
                    titleView
                        .padding(.bottom, 26)
                    formView
                        .padding(.bottom, 44)
                    footerView
                    Spacer()
                } //: VSTACK
                .padding(.horizontal, 32)
            }
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

//
//  RequestOTPView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct RequestOTPView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var titleView: some View {
        VStack(spacing: 30) {
            Text("Verify your mobile number")
                .font(.jbM24)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Text("We have sent you an SMS with a code to enter number")
                .font(.jbR16)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
    
    private var formView: some View {
        VStack(spacing: 16) {
            Text("0631301044")
                .font(.jbB18)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 48, alignment: .leading)
                .offset(x: 16)
                .overlay(
                    Capsule().stroke(Color.white, lineWidth: 1)
                )
                .padding(.bottom, 32)
            Text("Or login with Social")
                .font(.jbB18)
                .foregroundColor(.white)
            NavigationLink {
                VerifyOTPView()
            } label: {
                PrimaryButtonView(title: "Next")
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 56) {
                NavView(title: "", style: .secondary)
                    .padding(.horizontal, 12)
                VStack(spacing: 16) {
                    titleView
                    formView
                    Spacer()
                } //: VSTACK
                .padding(.horizontal, 32)
            }
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct RequestOTPView_Previews: PreviewProvider {
    static var previews: some View {
        RequestOTPView()
    }
}

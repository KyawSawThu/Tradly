//
//  VerifyOTPView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct VerifyOTPView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var appState: AppState
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var titleView: some View {
        VStack(spacing: 24) {
            Text("Phone Verification")
                .font(.jbM24)
                .foregroundColor(.white)
            Text("Enter your OTP code here")
                .font(.jbR16)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
    
    private var formView: some View {
        VStack(spacing: 8) {
            OTPView()
                .padding(.bottom, 32)
            Text("Didn’t you received any code?")
                .font(.jbB18)
                .foregroundColor(.white)
            Button {
                print("resend")
            } label: {
                Text("Resent new code")
                    .font(.jbR18)
                    .foregroundColor(Color.white)
            }
            .padding(.bottom, 48)

            Button {
                print("verify")
                appState.switchToRoot()
            } label: {
                PrimaryButtonView(title: "Verify")
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
                VStack(spacing: 74) {
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

// MARK: - PREVIEW
struct VerifyOTPView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyOTPView()
    }
}

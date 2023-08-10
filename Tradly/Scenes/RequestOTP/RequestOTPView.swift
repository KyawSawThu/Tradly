//
//  RequestOTPView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct RequestOTPView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var navigationView: some View {
        HStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image("arrow.back.white")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Spacer()
        }
        .frame(height: 48)
    }
    
    private var titleView: some View {
        VStack(spacing: 30) {
            Text("Verify your mobile number")
                .font(.mM24)
                .foregroundColor(.white)
            Text("We have sent you an SMS with a code to enter number")
                .font(.mR16)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
    
    private var formView: some View {
        VStack(spacing: 16) {
            Text("0631301044")
                .font(.mB18)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 48, alignment: .leading)
                .offset(x: 16)
                .overlay(
                    Capsule().stroke(Color.white, lineWidth: 1)
                )
                .padding(.bottom, 32)
            Text("Or login with Social")
                .font(.mB18)
                .foregroundColor(.white)
            Button {
                print("next")
            } label: {
                PrimaryButtonView(title: "Next")
            }

        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                VStack {
                    navigationView
                        .padding(.bottom, 66)
                    titleView
                        .padding(.bottom, 16)
                    formView
                    Spacer()
                } //: VSTACK
                .padding(.horizontal, 32)
            } //: ZSTACK
        } //: NAVIGATION
        .navigationBarHidden(true)
    }
}

struct RequestOTPView_Previews: PreviewProvider {
    static var previews: some View {
        RequestOTPView()
    }
}

//
//  ProfileView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - PROPERTIES
    private var functions: [String] = [
        "Edit Profile", "Language & Currency", "Feedback", "Refer a Friend", "Terms & Conditions"
    ]
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        VStack(spacing: 0) {
            Color.colorGreen
                .ignoresSafeArea(edges: .top)
            Color.colorLightWhite
                .ignoresSafeArea(edges: .bottom)
        }
    }
    
    // MARK: - INFO VIEW
    private var infoView: some View {
        HStack(spacing: 14) {
            Text("T")
                .font(.jbB28)
                .foregroundColor(.white)
                .frame(width: 64, height: 64)
                .background(Color.colorGreen)
                .cornerRadius(32)
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(Color.white, lineWidth: 1)
                )
            VStack(spacing: 6) {
                Text("Tradly Team")
                    .font(.jbB14)
                    .foregroundColor(.white)
                Text("+1 9998887776")
                    .font(.jbM12)
                    .foregroundColor(.white)
                Text("info@tradly.co")
                    .font(.jbM12)
                    .foregroundColor(.white)
                    .accentColor(.white)
            }
            Spacer()
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 6)
    }
    
    // MARK: - FUNCTIONS VIEW
    private var functionsView: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(0..<functions.count, id: \.self) { index in
                SettingItemView(title: functions[index])
            }
            Button {
                print("logout")
            } label: {
                Text("Logout")
                    .font(.jbM14)
                    .foregroundColor(.colorGreen)
                    .padding(.vertical, 12)
            }
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 6)
        .background(Color.white)
        .cornerRadius(8)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Profile")
                VStack(spacing: 0) {
                    infoView
                    functionsView
                        .padding(.top, 8)
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        } //: ZSTACK
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct SettingItemView: View {
    var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button {
                
            } label: {
                Text(title)
                    .font(.jbM14)
                    .foregroundColor(.black)
                    .padding(.vertical, 12)
            }
            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
        }
    }
}

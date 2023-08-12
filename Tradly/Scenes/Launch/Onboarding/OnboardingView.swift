//
//  OnboardingView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    @State
    private var presentLogin: Bool = false
    
    @State
    private var currentPage: Int = 0
    
    private let onboardingData: [OnboardingData] = OnboardingData.data
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.colorGreen
                Color.white
            } //: VSTACK
            .ignoresSafeArea()
            Rectangle()
                .foregroundColor(.clear)
                .background(Color.white)
                .frame(width: 300, height: 300, alignment: .center )
                .cornerRadius(8)
            Image(onboardingData[currentPage].image)
                .resizable()
                .frame(width: 285, height: 244)
            VStack(spacing: 50) {
                Spacer()
                Text(onboardingData[currentPage].title)
                    .font(.jbM20)
                    .foregroundColor(Color.colorGreen)
                    .multilineTextAlignment(.center)
                HStack {
                    ForEach(0..<onboardingData.count, id: \.self) { index in
                        PageIndicatorView(isSelected: currentPage == index)
                    }
                } //: HSTACK
                Button {
                    if currentPage < onboardingData.count - 1 {
                        currentPage = currentPage + 1
                    } else {
                        presentLogin = true
                    }
                } label: {
                    Text("Next")
                        .font(.jbSB18)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.colorGreen)
                        .cornerRadius(50)
                } //: BUTTON
                .fullScreenCover(isPresented: $presentLogin) {
                    LoginView()
                }
            } //: VSTACK
            .padding(.horizontal, 36)
        } //: ZSTACK
    }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct PageIndicatorView: View {
    
    var isSelected: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(.colorGreen)
            .opacity(isSelected ? 1 : 0.5)
            .frame(width: 12, height: 12)
    }
}

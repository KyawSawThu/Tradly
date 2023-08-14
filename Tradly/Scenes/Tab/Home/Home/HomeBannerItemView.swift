//
//  HomeBannerItemView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct HomeBannerItemView: View {
    var body: some View {
        ZStack {
            Image("cat.vegetables")
                .resizable()
                .scaledToFill()
            Rectangle()
                .background(Color.gray)
                .opacity(0.15)
            VStack(alignment: .leading, spacing: 18) {
                Text("Ready to deliver to your home".uppercased())
                    .font(.jbSB14)
                    .foregroundColor(.white)
                Text("Start Shopping".uppercased())
                    .font(.jbB12)
                    .foregroundColor(.white)
                    .frame(height: 28)
                    .padding(.horizontal, 12)
                    .overlay(
                        Capsule().stroke(Color.white, lineWidth: 1)
                    )
            }
        } //: ZSTACK
        .frame(width: 300, height: 180)
        .cornerRadius(12)
    }
}

struct HomeBannerItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBannerItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

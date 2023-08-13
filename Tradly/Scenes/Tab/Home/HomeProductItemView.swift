//
//  HomeProductItemView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct HomeProductItemView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 0) {
                Image("product.straberry")
                    .resizable()
                Text("Strawberry Punch")
                    .font(.jbM14)
                    .foregroundColor(.black)
                    .padding(8)
                HStack(spacing: 6) {
                    Image("tradly.avatar")
                        .frame(width: 12, height: 12)
                    Text("Tradly")
                        .font(.jbM14)
                        .foregroundColor(.colorGrey)
                    Spacer()
                    Text("$23")
                        .font(.jbM14)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
            }
        } //: ZSTACK
//        .frame(width: 160)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1.5)
        )
    }
}

struct HomeProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeProductItemView()
            .previewLayout(.sizeThatFits)
            .frame(width: 160, height: 200)
            .padding()
    }
}

//
//  HomeStoreItemView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct HomeStoreItemView: View {
    var body: some View {
        GeometryReader { frame in
            ZStack {
                Color.white
                VStack {
                    Image("store.background")
                        .resizable()
                        .frame(height: frame.size.height * 0.4)
                    Spacer()
                    Text("Tradly Store")
                        .font(.jbM14)
                        .foregroundColor(Color.colorGrey)
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.jbM12)
                            .foregroundColor(.white)
                            .frame(height: 24)
                            .padding(.horizontal, 24)
                            .background(Color.colorGreen)
                            .cornerRadius(12)
                    }
                    .padding(.bottom, 20)

                } //: VSTACK
                Image("tradly.avatar")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .offset(y: -(frame.size.height * 0.1))
            } //: ZSTACK
        } //: GEOMETRY
        .frame(width: 160)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1.5)
        )
        
    }
}

struct HomeStoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStoreItemView()
            .previewLayout(.sizeThatFits)
            .frame(width: 160, height: 200)
            .padding()
    }
}

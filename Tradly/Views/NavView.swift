//
//  NavView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct NavView: View {
    var title: String
    
    var body: some View {
        HStack(spacing: 8) {
            Text(title)
                .font(.jbB24)
                .foregroundColor(.white)
            Spacer()
            Button {
            
            } label: {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Button {
            
            } label: {
                Image("cart")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding(.leading, 10)
        } //: HSTACK
        .frame(height: 48)
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView(title: "Nav Title")
            .previewLayout(.sizeThatFits)
    }
}

//
//  HomeSecationHeaderView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct HomeSecationHeaderView: View {
    var title: String
    var rightTitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.jbB18)
                .foregroundColor(.colorGrey)
            Spacer()
            Button {
                
            } label: {
                Text(rightTitle)
                    .font(.jbM12)
                    .foregroundColor(.white)
                    .frame(height: 24)
                    .padding(.horizontal, 12)
                    .background(Color.colorGreen)
                    .cornerRadius(12)
            }
        } //: HSTACK
    }
}

struct HomeSecationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSecationHeaderView(title: "New Products", rightTitle: "See All")
            .previewLayout(.sizeThatFits)
            .frame(width: 320, height: 48)
    }
}

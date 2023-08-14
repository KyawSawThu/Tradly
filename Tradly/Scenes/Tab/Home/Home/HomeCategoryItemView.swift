//
//  HomeCategoryItemView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct HomeCategoryItemView: View {
    var category: CategoryData
    
    var body: some View {
        ZStack {
            Image(category.image)
                .resizable()
                .scaledToFit()
            Text(category.title)
                .font(.jbSB12)
                .foregroundColor(.white)
        }
    }
}

struct HomeCategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoryItemView(category: CategoryData.values[0])
            .previewLayout(.sizeThatFits)
            .frame(width: 200, height: 200)
            .padding()
    }
}

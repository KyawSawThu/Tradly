//
//  WishlistView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/13/23.
//

import SwiftUI

struct WishlistView: View {
    // MARK: - PROPERTIES
    private let flexibleColumns = [
        GridItem(.flexible(minimum: 100), spacing: 16),
        GridItem(.flexible(minimum: 100), spacing: 16)
    ]
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea(edges: .top)
    }
    
    // MARK: - PRODUCT LIST VIEW
    private var productListView: some View {
        LazyVGrid(columns: flexibleColumns, spacing: 16) {
            ForEach(0..<3) { _ in
                HomeProductItemView()
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 20)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Wishlist", style: .secondary)
                ScrollView(showsIndicators: false) {
                    productListView
                } //: SCROLL
                .background(Color.colorLightWhite)
            }
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}

//
//  StoreView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct StoreView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                VStack(spacing: 0) {
                    NavView(title: "Store")
                        .padding(.horizontal, 20)
                        .padding(.bottom, 16)
                    ScrollView(showsIndicators: false) {
                        
                    } //: SCROLL
                    .background(Color.white)
                }
            } //: ZSTACK
        } //: NAVIGATION
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}

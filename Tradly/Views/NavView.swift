//
//  NavView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

enum NavStyle {
    case primary
    case secondary
}

struct NavView: View {
    // MARK: - PROPERTIES
    var title: String
    var style: NavStyle = .primary
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - COMPONENTS
    private var backButtonView: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image("arrow.back.white")
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
    
    private var titleView: some View {
        Text(title)
            .font(style == .primary ? .jbB24 : .jbSB20)
            .foregroundColor(.white)
    }
    
    private var heartItemView: some View {
        NavigationLink {
            WishlistView()
        } label: {
            Image("heart")
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
    
    private var cartItemView: some View {
        NavigationLink {
            CartView()
        } label: {
            Image("cart")
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if style == .primary {
                HStack(spacing: 8) {
                    titleView
                    Spacer()
                    heartItemView
                    cartItemView
                        .padding(.leading, 10)
                } //: HSTACK
            } else {
                ZStack {
                    HStack {
                        backButtonView
                        Spacer()
                    }
                    titleView
                } //: ZSTACK
            } //: ZSTACK
        }
        .frame(height: 48)
        .padding(.bottom, 10)
        .padding(.horizontal, 20)
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView(title: "Nav Title")
            .previewLayout(.sizeThatFits)
    }
}

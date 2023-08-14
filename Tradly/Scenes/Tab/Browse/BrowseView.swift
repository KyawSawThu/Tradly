//
//  BrowseView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct BrowseView: View {
    // MARK: - PROPERTIES
    @State private var searchText: String = ""
    private let flexibleColumns = [
        GridItem(.flexible(minimum: 100), spacing: 16),
        GridItem(.flexible(minimum: 100), spacing: 16)
    ]
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var menuView: some View {
        HStack(spacing: 6) {
            ListMenuItemView(title: "Sort By", icon: "sort.white")
            ListMenuItemView(title: "Location", icon: "location.white")
            ListMenuItemView(title: "Category", icon: "category.white")
        }
    }
    
    private var productsView: some View {
        LazyVGrid(columns: flexibleColumns, spacing: 16) {
            ForEach(0..<7) { _ in
                NavigationLink(destination: ProductDetailView()) {
                    HomeProductItemView()
                }
            }
        }
        .padding(20)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Browse")
                VStack(spacing: 24) {
                    SearchTextField(searchText: $searchText)
                    menuView
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 16)
                ScrollView(showsIndicators: false) {
                    productsView
                }
                .background(Color.colorLightWhite)
            }
        } //: ZSTACK
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}

struct ListMenuItemView: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 6) {
            Image(icon)
                .resizable()
                .frame(width: 16, height: 16)
            Text(title)
                .font(.jbM14)
                .foregroundColor(.white)
        } //: HSTACK
        .frame(maxWidth: .infinity)
        .frame(height: 32)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white, lineWidth: 1)
        )
    }
}

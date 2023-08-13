//
//  HomeView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @State var searchText: String = ""
    private let categories = CategoryData.values
    private let flexibleColumns = [
        GridItem(.flexible(minimum: 60), spacing: 1),
        GridItem(.flexible(minimum: 60), spacing: 1),
        GridItem(.flexible(minimum: 60), spacing: 1),
        GridItem(.flexible(minimum: 60), spacing: 1)
    ]
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var bannerView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<5) { _ in
                    HomeBannerItemView()
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
        }
    }
    
    private var categoryVeiw: some View {
        LazyVGrid(columns: flexibleColumns, spacing: 1) {
            ForEach(0..<categories.count, id: \.self) { index in
                HomeCategoryItemView(category: categories[index])
            }
        }
    }
    
    private var newProductsView: some View {
        ZStack {
            VStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: 16)
                HomeSecationHeaderView(title: "New Products", rightTitle: "See All")
                    .frame(height: 46)
                    .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<5) { _ in
                            HomeProductItemView()
                        }
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                }
            } //: VSTACK
        }
    }
    
    private var popularProductsView: some View {
        ZStack {
            VStack(spacing: 0) {
                HomeSecationHeaderView(title: "Popular Products", rightTitle: "See All")
                    .frame(height: 46)
                    .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<5) { _ in
                            HomeProductItemView()
                        }
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                }
            } //: VSTACK
        }
    }
    
    private var storesView: some View {
        ZStack {
            VStack(spacing: 0) {
                HomeSecationHeaderView(title: "Stores to follow", rightTitle: "See All")
                    .frame(height: 46)
                    .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<5) { _ in
                            HomeStoreItemView()
                        }
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                }
            } //: VSTACK
        } //: ZSTACK
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Groceries")
                VStack(spacing: 20) {
                    SearchTextField(searchText: $searchText)
                        .frame(height: 46)
                        .padding(.horizontal, 20)
                        .padding(.bottom, -4)
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 0) {
                            bannerView
                            categoryVeiw
                            newProductsView
                            popularProductsView
                            storesView
                        }
                    } //: SCROLL
                    .background(Color.colorLightWhite)
                } //: VSTACK
            } //: VSTACK
        } //: ZSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

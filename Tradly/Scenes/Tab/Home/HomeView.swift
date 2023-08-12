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
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    private var navView: some View {
        HStack(spacing: 8) {
            Text("Groceries")
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
        }
        .frame(height: 48)
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
        .background(Color.white)
    }
    
    private var categoryVeiw: some View {
        VStack(spacing: 1) {
            HStack(spacing: 1) {
                ForEach(0..<4, id: \.self) { index in
                    HomeCategoryItemView(category: categories[index])
                }
            }
            HStack(spacing: 1) {
                ForEach(4..<8, id: \.self) { index in
                    HomeCategoryItemView(category: categories[index])
                }
            }
        }
        .background(Color.white)
    }
    
    private var newProductsView: some View {
        ZStack {
            Color.white
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
            Color.white
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
            Color.white
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
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    navView
                        .padding(.horizontal, 20)
                    SearchTextField(searchText: $searchText)
                        .frame(height: 46)
                        .padding(.top, 20)
                        .padding(.horizontal, 20)
                    bannerView
                        .padding(.top, 16)
                    categoryVeiw
                    newProductsView
                    popularProductsView
                    storesView
                }
            } //: SCROLL
        } //: ZSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

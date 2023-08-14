//
//  StoreDetailView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/14/23.
//

import SwiftUI

struct StoreDetailView: View {
    // MARK: - PROPERTIES
    @State private var selectedTag: Int = 0
    private let categories: [String] = [
        "All Products", "Fruits", "Vegetables", "Drinks", "Home Care"
    ]
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea(edges: .top)
    }
    
    // MARK: - HEADER VIEW
    private var headerView: some View {
        VStack(spacing: 24) {
            HStack(spacing: 12) {
                Text("T")
                    .font(.jbB24)
                    .foregroundColor(.white)
                    .frame(width: 48, height: 48)
                    .background(Color.colorGreen)
                    .cornerRadius(24)
                VStack(alignment: .leading, spacing: 0) {
                    Text("Tradly Store")
                        .font(.jbM14)
                        .foregroundColor(.black)
                    Text("tradly.app")
                        .font(.jbM14)
                        .foregroundColor(.colorGrey)
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.jbM12)
                        .foregroundColor(.white)
                        .frame(height: 24)
                        .padding(.horizontal, 16)
                        .background(Color.colorGreen)
                        .cornerRadius(12)
                }
            } //: HSTACK
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In augue nunc vel rhoncus, sed. Neque hendrerit risus ut metus ultrices ac. Dui morbi eu amet id mauris. Eget at ut.")
                .font(.jbM12)
                .foregroundColor(.colorGrey)
        } //: VSTACK
        .frame(maxWidth: .infinity)
        .padding(.vertical, 24)
        .padding(.horizontal, 32)
        .background(Color.white)
    }
    
    // MARK: - STORE DESCRIPTION VIEW
    private var storeDescView: some View {
        HStack(spacing: 44) {
            VStack(spacing: 6) {
                Text("Total Followers")
                    .font(.jbM12)
                    .foregroundColor(.black)
                Text("11.3k")
                    .font(.jbM12)
                    .foregroundColor(.black)
            }
            VStack(spacing: 6) {
                Text("Total Products")
                    .font(.jbM12)
                    .foregroundColor(.black)
                Text("257")
                    .font(.jbM12)
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 24)
        .background(Color.white)
    }
    
    // MARK: CATEGORY LIST VIEW
    private var categoryListView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<categories.count, id: \.self) { index in
                    Button {
                        selectedTag = index
                    } label: {
                        CategoryTagItemView(tag: categories[index], isSelected: index == selectedTag)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
    }
    
    // MARK: PRODUCT LIST VIEW
    private let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 16),
        GridItem(.adaptive(minimum: 100), spacing: 16)
    ]
    private var productListView: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0..<5) { _ in
                NavigationLink(destination: ProductDetailView()) {
                    HomeProductItemView()
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Tradly Store", style: .secondary)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 8) {
                        headerView
                        storeDescView
                        categoryListView
                        productListView
                    }
                    .padding(.bottom, 20)
                } //: SCROLL
                .background(Color.colorLightWhite)
                .ignoresSafeArea(edges: .bottom)
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView()
    }
}

struct CategoryTagItemView: View {
    var tag: String
    var isSelected: Bool
    
    var body: some View {
        Text(tag)
            .font(.jbM14)
            .foregroundColor(isSelected ? .white : .black)
            .frame(height: 30)
            .padding(.horizontal, 12)
            .background(isSelected ? Color.colorGreen : Color.clear)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(isSelected ? Color.colorGreen : Color.colorGrey, lineWidth: 1)
            )
    }
}

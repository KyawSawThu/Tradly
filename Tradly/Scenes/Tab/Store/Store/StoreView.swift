//
//  StoreView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct StoreView: View {
    // MARK: - PROPERTIES
    @State var store: Bool = true
    @State var searchText: String = ""
    private let flexibleColumns = [
        GridItem(.flexible(minimum: 100), spacing: 16),
        GridItem(.flexible(minimum: 100), spacing: 16)
    ]

    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea(edges: .top)
    }
    
    // MARK: - CREATE STORE VIEW
    private var createStoreView: some View {
        VStack(spacing: 24) {
            Image("store")
            Text("You don't have a store")
                .font(.jbSB18)
                .foregroundColor(Color.black)
            NavigationLink {
                CreateStoreView()
            } label: {
                Text("Create Store")
                    .font(.jbSB18)
                    .foregroundColor(Color.white)
                    .frame(height: 48)
                    .padding(.horizontal, 32)
                    .background(Color.colorGreen)
                    .cornerRadius(24)
            }
            .padding(.top, 12)
        }
        .padding(.top, 56)
    }
    
    // MARK: - STORE HEADER VIEW
    private var storeHeaderView: some View {
        ZStack {
            Color.white
            VStack(spacing: 16) {
                Text("T")
                    .font(.jbB24)
                    .foregroundColor(.white)
                    .frame(width: 48, height: 48)
                    .background(Color.colorGreen)
                    .cornerRadius(24)
                Text("Tradly Store")
                    .font(.jbB24)
                    .foregroundColor(.black)
                HStack(spacing: 16) {
                    NavigationLink {
                        
                    } label: {
                        Text("Edit Store")
                            .font(.jbM12)
                            .foregroundColor(.colorGreen)
                            .frame(height: 24)
                            .padding(.horizontal, 16)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.colorGreen, lineWidth: 1)
                            )
                    }
                    NavigationLink {
                        
                    } label: {
                        Text("View Store")
                            .font(.jbM12)
                            .foregroundColor(.white)
                            .frame(height: 24)
                            .padding(.horizontal, 16)
                            .background(Color.colorGreen)
                            .cornerRadius(12)
                    }
                } //: HSTACK
                VStack(spacing: 0) {
                    Rectangle()
                        .foregroundColor(.colorGrey)
                        .frame(height: 0.25)
                        .padding(.top, 4)
                    Button {
                        
                    } label: {
                        Text("Remove Store")
                            .font(.jbM14)
                            .foregroundColor(.colorGrey)
                    }
                    .padding(.vertical, 10)
                } //: VSTACK
            } //: VSTACK
            .padding(.top, 30)
        } //: ZSTACK
    }
    
    // MARK: - ADD PRODUCT VIEW
    private var addProductView: some View {
        VStack(spacing: 36) {
            Text("You don't have products")
                .font(.jbSB18)
                .foregroundColor(Color.black)
            NavigationLink {
                
            } label: {
                Text("Add Product")
                    .font(.jbSB18)
                    .foregroundColor(.colorGreen)
                    .frame(height: 48)
                    .padding(.horizontal, 32)
                    .background(Color.white)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.colorGreen, lineWidth: 1)
                    )
            }
        } //: VSTACK
        .padding(.vertical, 50)
    }
    
    // MARK: - PRODUCT LIST VIEW
    private var productListView: some View {
        VStack(alignment: .leading, spacing: 24) {
            SearchTextField(searchText: $searchText)
            Text("Products")
                .font(.jbB18)
                .foregroundColor(.black)
            LazyVGrid(columns: flexibleColumns, spacing: 16) {
                ForEach(0..<3) { _ in
                    HomeProductItemView()
                }
                NavigationLink {
                    
                } label: {
                    AddProductItemView()
                }
            }
            .padding(.top, -8)
        }
        .padding(.vertical, 32)
        .padding(.horizontal, 20)
    }
    
    // MARK: - STORE VIEW
    private var storeView: some View {
        VStack(spacing: 0) {
            storeHeaderView
//            addProductView
            productListView
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Store")
                ScrollView(showsIndicators: false) {
                    if store {
                        storeView
                    } else {
                        createStoreView
                    }
                } //: SCROLL
                .frame(maxWidth: .infinity)
                .background(Color.colorLightWhite)
            }
        } //: ZSTACK
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}

struct AddProductItemView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Image("add.grey")
                    .resizable()
                    .frame(width: 32, height: 32)
                Text("Add Product")
                    .font(.jbM14)
                    .foregroundColor(.colorGrey)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1.5, dash: [6]))
        )
    }
}

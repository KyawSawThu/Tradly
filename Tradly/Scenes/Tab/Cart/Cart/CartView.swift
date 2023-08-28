//
//  CartView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/13/23.
//

import SwiftUI

struct CartView: View {
    // MARK: - PROPERTIES
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    // MARK: - HEADER
    @ViewBuilder
    private var headerView: some View {
        ZStack {
            Color.white
            Button {
                
            } label: {
                Text("+ Add New Address")
                    .font(.jbM16)
                    .foregroundColor(.colorGrey)
            }
        }
        .frame(height: 52)
    }
    
    // MARK: - PRODUCT LIST
    @ViewBuilder
    private var productListView: some View {
        VStack(spacing: 0) {
            ForEach(0..<2) { _ in
                CartProductItemView()
            }
        }
    }
    
    @ViewBuilder
    private var productDetailView: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Product Details")
                .font(.jbSB18)
                .foregroundColor(.black)
            VStack(spacing: 6) {
                createTitleValueRow(title: "Price (1 item)", value: "$25")
                createTitleValueRow(title: "Delivery Fee", value: "$13")
            }
            Divider()
            HStack {
                Text("Total Amount")
                    .font(.jbB14)
                    .foregroundColor(.black)
                Spacer()
                Text("$38")
                    .font(.jbM14)
                    .foregroundColor(.black)
            }
            .padding(.bottom, 4)
        }
        .padding(20)
        .background(Color.white)
    }
    
    // MARK: - FOOTER
    @ViewBuilder
    private var footerView: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(edges: .bottom)
            Button {
                
            } label: {
                Text("Continue to Payment")
            }
            .buttonStyle(.primary)
            .padding(.horizontal, 20)
        }
        .frame(height: 72)
        .background(
            Color.white
                .shadow(color: Color.colorGrey, radius: 10, x: 2, y: 2)
        )
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "My Cart", style: .secondary)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 10) {
                        headerView
                        productListView
                        productDetailView
                    } //: VSTACK
                } //: SCROLL
                .background(Color.colorLightWhite)
                footerView
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
    
//    @ViewBuilder
    private func createTitleValueRow(title: String, value: String) -> some View {
        HStack(spacing: 0) {
            Text(title)
                .font(.jbM14)
                .foregroundColor(.black)
            Spacer()
            Text(value)
                .font(.jbM14)
                .foregroundColor(.black)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

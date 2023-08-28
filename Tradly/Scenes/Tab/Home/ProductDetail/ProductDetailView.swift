//
//  ProductDetailView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/14/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    // MARK: - HEADER VIEW
    @ViewBuilder
    private var headerView: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("product.banner")
                .resizable()
                .frame(height: 220)
            VStack(alignment: .leading, spacing: 8) {
                Text("Cocoa Cola")
                    .font(.jbB18)
                    .foregroundColor(.colorGrey)
                Text("$25")
                    .font(.jbB18)
                    .foregroundColor(.colorGreen)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
    
    // MARK: - STORE VIEW
    @ViewBuilder
    private var storeView: some View {
        HStack(spacing: 12) {
            Text("T")
                .font(.jbB24)
                .foregroundColor(.white)
                .frame(width: 32, height: 32)
                .background(Color.colorGreen)
                .cornerRadius(16)
            Text("Tradly Store")
                .font(.jbM14)
                .foregroundColor(.black)
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
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(Color.white)
    }
    
    // MARK: - DESCRIPTION VIEW
    @ViewBuilder
    private var descriptionView: some View {
        Text(
        """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsumut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duismattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagittis. Non commodo, a justo massa porttitor sed placerat in. Orci tristique etiam tempus sed. Mi varius morbi egestas dictum tempor nisl.
        """
        )
        .font(.jbR14)
        .foregroundColor(.colorGrey)
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
        .background(Color.white)
    }
    
    // MARK: - DETAILS VIEW
    @ViewBuilder
    private var detailsView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Additional Details")
                .font(.jbSB18)
                .foregroundColor(.black)
            HStack(alignment: .top, spacing: 16) {
                Text("Delivery Details")
                    .font(.jbR14)
                    .foregroundColor(.colorGrey)
                Text("Home Delivery Available, Cash On Delivery")
                    .font(.jbR14)
                    .foregroundColor(.black)
            }
        }
        .scaledToFit()
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(Color.white)
    }
    
    // MARK: - FOOTER VIEW
    @ViewBuilder
    private var footerView: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(edges: .bottom)
            Button {
                
            } label: {
                Text("Add to Cart")
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
                NavView(title: "Product Detail", style: .secondary)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 8) {
                        headerView
                        storeView
                        descriptionView
                        detailsView
                    } //: VSTACK
                } //: SCROLL
                .background(Color.colorLightWhite)
                footerView
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}

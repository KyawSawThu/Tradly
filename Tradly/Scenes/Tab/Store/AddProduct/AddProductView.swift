//
//  AddProductView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/14/23.
//

import SwiftUI

struct AddProductView: View {
    // MARK: - PROPERTIES
    @State private var name: String = ""
    @State private var category: String = ""
    @State private var price: String = ""
    @State private var offerPrice: String = ""
    @State private var location: String = ""
    @State private var desc: String = ""
    @State private var priceType: String = ""
    @State private var details: String = ""
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea()
    }
    
    // MARK: - HEADER VIEW
    @ViewBuilder
    private var headerView: some View {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    AddPhotosItemView()
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
            }
            Text("Max. 4 photos per product")
                .font(.jbR14)
                .foregroundColor(.colorGrey)
                .padding(.horizontal, 20)
        }
        .padding(.vertical, 24)
    }
    
    // MARK: - FORM VIEW
    @ViewBuilder
    private var formView: some View {
        ZStack {
            Color.white
            VStack(spacing: 16) {
                FormTextField(title: "Product Name", text: $name)
                FormTextField(title: "Category Product", text: $category)
                HStack(spacing: 50) {
                    FormTextField(title: "Price", text: $price)
                    FormTextField(title: "Offer Price", text: $offerPrice)
                }
                FormTextField(title: "Location Details", text: $location)
                FormTextField(title: "Product Description", text: $desc)
                FormTextField(title: "Price Type", text: $price)
                FormTextField(title: "Additional Details", text: $details)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
        }
    }
    
    // MARK: - FOOTER VIEW
    @ViewBuilder
    private var footerView: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(edges: .bottom)
            Button {
                
            } label: {
                Text("Add Product")
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
                NavView(title: "Add Product", style: .secondary)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        headerView
                        formView
                        Spacer()
                    }
                } //: SCROLL
                .background(Color.colorLightWhite)
                footerView
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductView()
    }
}

struct AddPhotosItemView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Image("add.grey")
                    .resizable()
                    .frame(width: 32, height: 32)
                Text("Add Photos")
                    .font(.jbM14)
                    .foregroundColor(.colorGrey)
            }
        }
        .frame(width: 180, height: 108)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1.5, dash: [4]))
        )
    }
}

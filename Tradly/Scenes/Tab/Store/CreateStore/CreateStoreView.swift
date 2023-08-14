//
//  CreateStoreView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/13/23.
//

import SwiftUI

struct CreateStoreView: View {
    // MARK: - PROPERTIES
    @State private var name: String = ""
    @State private var webAddress: String = ""
    @State private var desc: String = ""
    @State private var type: String = ""
    @State private var address: String = ""
    @State private var city: String = ""
    @State private var country: String = ""
    
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea(edges: .top)
    }
    
    private var headerView: some View {
        VStack(spacing: 24) {
            Image("store")
            Text("This information is used to set up your shop")
                .font(.jbM14)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 50)
        .padding(.vertical, 24)
    }
    
    private var formView: some View {
        ZStack {
            Color.white
            VStack(spacing: 16) {
                FormTextField(title: "Store Name", text: $name)
                FormTextField(title: "Store Web Address", text: $webAddress)
                FormTextField(title: "Store Description", text: $desc)
                FormTextField(title: "Store Type", text: $type)
                FormTextField(title: "Store Address", text: $address)
                FormTextField(title: "City", text: $city)
                FormTextField(title: "Country", text: $country)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
        }
    }
    
    private var footerView: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(edges: .bottom)
            Button {
                
            } label: {
                Text("Create")
                    .font(.jbSB18)
                    .foregroundColor(.white)
                    .frame(height: 48)
                    .frame(maxWidth: .infinity)
                    .background(Color.colorGreen)
                    .cornerRadius(24)
            }
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
                NavView(title: "My Store", style: .secondary)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        headerView
                        formView
                    }
                } //: SCROLL
                .background(Color.colorLightWhite)
                footerView
            } //: VSTACK
        } //: ZSTACK
        .navigationBarHidden(true)
    }
}

struct CreateStoreView_Previews: PreviewProvider {
    static var previews: some View {
        CreateStoreView()
    }
}

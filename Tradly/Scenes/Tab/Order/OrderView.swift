//
//  OrderView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct OrderView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    private var backgroundView: some View {
        Color.colorGreen
            .ignoresSafeArea(edges: .top)
    }
    
    // MARK: - HEADER VIEW
    private var headerView: some View {
        HStack(spacing: 8) {
            Text("Transactions")
                .font(.jbB20)
                .foregroundColor(.black)
            Text("August 2023")
                .font(.jbB14)
                .foregroundColor(.colorGreen)
                .frame(height: 26)
                .padding(.horizontal, 12)
                .background(Color.colorGreen.opacity(0.15))
                .cornerRadius(6)
            Spacer()
        }
        .frame(height: 32)
        .padding(.vertical, 24)
    }
    
    // MARK: - ORDER LIST VIEW
    private var orderListView: some View {
        VStack(spacing: 10) {
            ForEach(0..<3) { index in
                OrderHistoryItemView()
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                NavView(title: "Order History")
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        headerView
                        orderListView
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                } //: SCROLL
                .background(Color.colorLightWhite)
            }
        } //: ZSTACK
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

struct OrderHistoryItemView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("cat.beverages")
                .resizable()
                .frame(width: 44, height: 44)
                .cornerRadius(5)
            VStack(alignment: .leading, spacing: 4) {
                Text("Coca Cola")
                    .font(.jbM14)
                    .foregroundColor(.black)
                Text("$25")
                    .font(.jbB18)
                    .foregroundColor(.colorGreen)
            }
            Spacer()
            Text("Delivered")
                .font(.jbM12)
                .foregroundColor(.white)
                .frame(height: 20)
                .padding(.horizontal, 16)
                .background(Color.colorGreen)
                .cornerRadius(10)
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(8)
    }
}

//
//  CartProductItemView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/25/23.
//

import SwiftUI

struct CartProductItemView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    @ViewBuilder
    private var productInfoView: some View {
        HStack(alignment: .center,spacing: 15) {
            Image("cat.vegetables")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(12)
            VStack(alignment: .leading, spacing: 6) {
                Text("Coca Cola")
                    .font(.jbM14)
                    .foregroundColor(.colorGrey)
                Text("$25")
                    .font(.jbB20)
                    .foregroundColor(.colorGreen)
                HStack(spacing: 12) {
                    Button {
                        
                    } label: {
                        Text("-")
                            .font(.jbB20)
                            .foregroundColor(.colorGrey)
                            .frame(width: 32, height: 32)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.colorGrey, lineWidth: 1)
                            )
                    }
                    
                    Text("1")
                        .font(.jbM16)
                        .foregroundColor(.black)
                    
                    Button {
                        
                    } label: {
                        Text("+")
                            .font(.jbB20)
                            .foregroundColor(.colorGrey)
                            .frame(width: 32, height: 32)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.colorGrey, lineWidth: 1)
                            )
                    }
                } //: HSTACK
            } //: VSTACK
            Spacer()
        } //: HSTACK
        .padding(20)
    }
    
    @ViewBuilder
    private var removeButton: some View {
        Button {
            
        } label: {
            Text("Remove")
                .font(.jbM16)
                .foregroundColor(.colorGrey)
                .frame(height: 40)
        }
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 0) {
                productInfoView
                Divider()
                removeButton
                Divider()
            } //: VSTACK
        } //: ZSTACK
    }
}

struct CartProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartProductItemView()
            .previewLayout(.fixed(width: 320, height: 200))
    }
}

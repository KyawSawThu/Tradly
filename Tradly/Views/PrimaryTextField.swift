//
//  PrimaryTextField.swift
//  Tradly
//
//  Created by KyawSawThu on 8/10/23.
//

import SwiftUI

struct PrimaryTextField: View {
    var text: Binding<String>
    var placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .font(.mR18)
                .foregroundColor(.white)
                .background(Color.clear)
                .opacity(text.wrappedValue.isEmpty ? 1 : 0)
                .padding(.horizontal, 16)
            TextField(text.wrappedValue, text: text)
                .font(.mR18)
                .foregroundColor(.white)
                .accentColor(.white)
                .padding(.horizontal, 16)
        } //: ZSTACK
        .frame(height: 48)
        .background(Color.colorGreen)
        .overlay(
            Capsule().strokeBorder(Color.white, lineWidth: 1)
        )
        .cornerRadius(24)
    }
}

struct PrimaryTextField_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryTextField(text: .constant(""), placeholder: "Example")
            .previewLayout(.sizeThatFits)
    }
}

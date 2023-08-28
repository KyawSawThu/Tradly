//
//  PrimaryButton.swift
//  Tradly
//
//  Created by KyawSawThu on 8/10/23.
//

import SwiftUI

struct PrimaryButtonView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.jbR16)
            .foregroundColor(Color.colorGreen)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(Color.white)
            .cornerRadius(24)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView(title: "Login")
            .previewLayout(.sizeThatFits)
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.jbSB18)
            .foregroundColor(.white)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .background(Color.colorGreen)
            .cornerRadius(24)
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: Self { Self() }
}

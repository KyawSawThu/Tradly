//
//  FormTextField.swift
//  Tradly
//
//  Created by KyawSawThu on 8/13/23.
//

import SwiftUI

struct FormTextField: View {
    // MARK: - PROPERTIES
    var title: String
    @Binding var text: String
    // MARK: - COMPONENTS
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.jbR14)
                .foregroundColor(Color.colorGrey)
            TextField("", text: $text)
                .font(.jbR16)
                .foregroundColor(Color.black)
                .frame(height: 24)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.colorGrey)
        }
    }
}

struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(title: "Full Name", text: .constant("John"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

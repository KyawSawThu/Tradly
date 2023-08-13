//
//  SearchTextField.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct SearchTextField: View {
    // MARK: - PROPERTIES
    @Binding var searchText: String
    @State private var isEditing: Bool = false
    // MARK: - COMPONENTS
    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack(spacing: 22) {
                Image("search")
                    .resizable()
                    .frame(width: 24, height: 24)
                Text("Search Product")
                    .font(.jbM14)
                    .foregroundColor(.colorGrey)
                Spacer()
            }
            .opacity(!searchText.isEmpty || isEditing ? 0 : 1)
            .offset(x: 18)
            TextField("", text: $searchText, onEditingChanged: { value in
                print(value)
                isEditing = value
            })
                .font(.jbM14)
                .foregroundColor(.colorGreen)
                .offset(x: 23)
        }
        .frame(height: 48)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(23)
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}

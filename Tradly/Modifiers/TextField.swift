//
//  TextField.swift
//  Tradly
//
//  Created by KyawSawThu on 8/10/23.
//

import SwiftUI

struct TextFieldPlaceholder: ViewModifier {
    var placeholder: String
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .font(.jbR18)
                .foregroundColor(.white)
                .opacity(text.isEmpty ? 1 : 0)
            content
        }
    }
}

extension TextField {
    func primaryStyle<Content: View> () -> some View {
        self
        .font(.jbR18)
        .foregroundColor(.white)
        .frame(height: 48)
        .background(Color.clear)
        .padding(.horizontal, 16)
        .overlay(
            Capsule().strokeBorder(Color.white, lineWidth: 1)
        )
        .cornerRadius(24)
    }
}

extension View {
    func placeholder(placeholder: String, text: String) -> some View {
        modifier(TextFieldPlaceholder(placeholder: placeholder, text: text))
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: ()-> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

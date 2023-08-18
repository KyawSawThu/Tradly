//
//  AlertView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/17/23.
//

import SwiftUI

struct AlertView: View {
    
    var title: String
    var message: String
    @Binding var isPresented: Bool
    
    // MARK: Private
    
    private var dimView: some View {
        Color.black
            .opacity(0.3)
            .ignoresSafeArea()
    }
    
    private var alertView: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.jbM20)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(16)
            Text(message)
                .font(.jbR16)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(16)
            Divider()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 0.5)
                .background(Color.colorGreen)
                .padding(.all, 0)
            Button {
                isPresented = false
            } label: {
                Text("Cool")
                    .font(.jbR14)
                    .foregroundColor(.black)
                    .frame(height: 46)
                    .frame(maxWidth: .infinity)
            }
        } //: VSTACK
        .background(Color.white)
        .cornerRadius(8)
        .padding(.horizontal, 32)
    }
    
    var body: some View {
        ZStack {
            dimView
            alertView
        } //: ZSTACK
    }
}

struct AlertViewModifier {
    
    @Binding private var isPresented: Bool
    
    private let title: String
    private let message: String
}

extension AlertViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        if isPresented {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                    AlertView(title: title, message: message, isPresented: $isPresented)
                )
        } else {
            content
        }
    }
}

extension AlertViewModifier {
    
    init(title: String, message: String, isPresented: Binding<Bool>) {
        self.title = title
        self.message = message
        self._isPresented = isPresented
    }
}

extension View {
    func alert(title: String, message: String, isPresented: Binding<Bool>) -> some View {
        return modifier(AlertViewModifier(title: title, message: message, isPresented: isPresented))
    }
}

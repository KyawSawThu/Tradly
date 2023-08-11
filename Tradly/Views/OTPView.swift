//
//  OTPView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct OTPView: View {
    
    enum FocusedField: Hashable {
        case code
    }
    
    // MARK: - PROPERTIES
    @State var code: String = ""
    @State var isFocused: Bool = false
    
    // MARK: - COMPONENTS
    private var textfield: some View {
        TextField("", text: $code)
            .frame(width: 0, height: 0, alignment: .center)
            .font(.system(size: 0))
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .textContentType(.oneTimeCode)
    }
    
    private var inputView: some View {
        VStack(spacing: 16) {
            Text("1")
                .font(.mM30)
                .foregroundColor(.white)
            Rectangle()
                .frame(maxWidth: 36, maxHeight: 1)
                .foregroundColor(.white)
        }
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack(spacing: 12) {
                ForEach(0..<6) { _ in
                    inputView
                    textfield
                }
            } //: HSTACK
        } //: ZSTACK
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
            .previewLayout(.sizeThatFits)
    }
}

//
//  ToastView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import SwiftUI

struct ToastView: View {
    // MARK: - PROPERTIES
    // MARK: - COMPONENTS
    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack(spacing: 4) {
                VStack(spacing: 4) {
                } //: VSTACK
            } //: HSTACK
        } //: ZSTACK
    }
}

struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

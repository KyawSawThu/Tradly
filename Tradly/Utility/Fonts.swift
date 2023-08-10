//
//  Fonts.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import SwiftUI

enum Monserrat: String {
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    
    static func font(size: CGFloat, weight: Monserrat) -> Font {
        return Font.custom("Monserrat-\(weight.rawValue)", size: size)
    }
}

extension Font {
    static var mR12: Font { Monserrat.font(size: 12, weight: .regular) }
    static var mR14: Font { Monserrat.font(size: 14, weight: .regular) }
    static var mR16: Font { Monserrat.font(size: 16, weight: .regular) }
    static var mR18: Font { Monserrat.font(size: 18, weight: .regular) }
    static var mR20: Font { Monserrat.font(size: 20, weight: .regular) }
    static var mR22: Font { Monserrat.font(size: 22, weight: .regular) }
    static var mR24: Font { Monserrat.font(size: 24, weight: .regular) }
    static var mR26: Font { Monserrat.font(size: 16, weight: .regular) }
    static var mR28: Font { Monserrat.font(size: 28, weight: .regular) }
    static var mR30: Font { Monserrat.font(size: 30, weight: .regular) }
    
    static var mM12: Font { Monserrat.font(size: 12, weight: .medium) }
    static var mM14: Font { Monserrat.font(size: 14, weight: .medium) }
    static var mM16: Font { Monserrat.font(size: 16, weight: .medium) }
    static var mM18: Font { Monserrat.font(size: 18, weight: .medium) }
    static var mM20: Font { Monserrat.font(size: 20, weight: .medium) }
    static var mM22: Font { Monserrat.font(size: 22, weight: .medium) }
    static var mM24: Font { Monserrat.font(size: 24, weight: .medium) }
    static var mM26: Font { Monserrat.font(size: 16, weight: .medium) }
    static var mM28: Font { Monserrat.font(size: 28, weight: .medium) }
    static var mM30: Font { Monserrat.font(size: 30, weight: .medium) }
    
    static var mSB12: Font { Monserrat.font(size: 12, weight: .semibold) }
    static var mSB14: Font { Monserrat.font(size: 14, weight: .semibold) }
    static var mSB16: Font { Monserrat.font(size: 16, weight: .semibold) }
    static var mSB18: Font { Monserrat.font(size: 18, weight: .semibold) }
    static var mSB20: Font { Monserrat.font(size: 20, weight: .semibold) }
    static var mSB22: Font { Monserrat.font(size: 22, weight: .semibold) }
    static var mSB24: Font { Monserrat.font(size: 24, weight: .semibold) }
    static var mSB26: Font { Monserrat.font(size: 16, weight: .semibold) }
    static var mSB28: Font { Monserrat.font(size: 28, weight: .semibold) }
    static var mSB30: Font { Monserrat.font(size: 30, weight: .semibold) }
    
    static var mB12: Font { Monserrat.font(size: 12, weight: .bold) }
    static var mB14: Font { Monserrat.font(size: 14, weight: .bold) }
    static var mB16: Font { Monserrat.font(size: 16, weight: .bold) }
    static var mB18: Font { Monserrat.font(size: 18, weight: .bold) }
    static var mB20: Font { Monserrat.font(size: 20, weight: .bold) }
    static var mB22: Font { Monserrat.font(size: 22, weight: .bold) }
    static var mB24: Font { Monserrat.font(size: 24, weight: .bold) }
    static var mB26: Font { Monserrat.font(size: 16, weight: .bold) }
    static var mB28: Font { Monserrat.font(size: 28, weight: .bold) }
    static var mB30: Font { Monserrat.font(size: 30, weight: .bold) }
}


//
//  Fonts.swift
//  Tradly
//
//  Created by KyawSawThu on 8/9/23.
//

import SwiftUI

enum JetBrainsMono: String {
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    
    static func font(size: CGFloat, weight: Monserrat) -> Font {
        return Font.custom("JetBrainsMono-\(weight.rawValue)", size: size)
    }
}

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
    static var jbR12: Font { JetBrainsMono.font(size: 12, weight: .regular) }
    static var jbR14: Font { JetBrainsMono.font(size: 14, weight: .regular) }
    static var jbR16: Font { JetBrainsMono.font(size: 16, weight: .regular) }
    static var jbR18: Font { JetBrainsMono.font(size: 18, weight: .regular) }
    static var jbR20: Font { JetBrainsMono.font(size: 20, weight: .regular) }
    static var jbR22: Font { JetBrainsMono.font(size: 22, weight: .regular) }
    static var jbR24: Font { JetBrainsMono.font(size: 24, weight: .regular) }
    static var jbR26: Font { JetBrainsMono.font(size: 16, weight: .regular) }
    static var jbR28: Font { JetBrainsMono.font(size: 28, weight: .regular) }
    static var jbR30: Font { JetBrainsMono.font(size: 30, weight: .regular) }
    
    static var jbM12: Font { JetBrainsMono.font(size: 12, weight: .medium) }
    static var jbM14: Font { JetBrainsMono.font(size: 14, weight: .medium) }
    static var jbM16: Font { JetBrainsMono.font(size: 16, weight: .medium) }
    static var jbM18: Font { JetBrainsMono.font(size: 18, weight: .medium) }
    static var jbM20: Font { JetBrainsMono.font(size: 20, weight: .medium) }
    static var jbM22: Font { JetBrainsMono.font(size: 22, weight: .medium) }
    static var jbM24: Font { JetBrainsMono.font(size: 24, weight: .medium) }
    static var jbM26: Font { JetBrainsMono.font(size: 16, weight: .medium) }
    static var jbM28: Font { JetBrainsMono.font(size: 28, weight: .medium) }
    static var jbM30: Font { JetBrainsMono.font(size: 30, weight: .medium) }
    
    static var jbSB12: Font { JetBrainsMono.font(size: 12, weight: .semibold) }
    static var jbSB14: Font { JetBrainsMono.font(size: 14, weight: .semibold) }
    static var jbSB16: Font { JetBrainsMono.font(size: 16, weight: .semibold) }
    static var jbSB18: Font { JetBrainsMono.font(size: 18, weight: .semibold) }
    static var jbSB20: Font { JetBrainsMono.font(size: 20, weight: .semibold) }
    static var jbSB22: Font { JetBrainsMono.font(size: 22, weight: .semibold) }
    static var jbSB24: Font { JetBrainsMono.font(size: 24, weight: .semibold) }
    static var jbSB26: Font { JetBrainsMono.font(size: 16, weight: .semibold) }
    static var jbSB28: Font { JetBrainsMono.font(size: 28, weight: .semibold) }
    static var jbSB30: Font { JetBrainsMono.font(size: 30, weight: .semibold) }
    
    static var jbB12: Font { JetBrainsMono.font(size: 12, weight: .bold) }
    static var jbB14: Font { JetBrainsMono.font(size: 14, weight: .bold) }
    static var jbB16: Font { JetBrainsMono.font(size: 16, weight: .bold) }
    static var jbB18: Font { JetBrainsMono.font(size: 18, weight: .bold) }
    static var jbB20: Font { JetBrainsMono.font(size: 20, weight: .bold) }
    static var jbB22: Font { JetBrainsMono.font(size: 22, weight: .bold) }
    static var jbB24: Font { JetBrainsMono.font(size: 24, weight: .bold) }
    static var jbB26: Font { JetBrainsMono.font(size: 16, weight: .bold) }
    static var jbB28: Font { JetBrainsMono.font(size: 28, weight: .bold) }
    static var jbB30: Font { JetBrainsMono.font(size: 30, weight: .bold) }
}
 

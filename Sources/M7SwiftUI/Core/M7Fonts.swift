//
//  M7Fonts.swift
//  DSOneDemo
//
//  Created by 18391981 on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

public class M7Fonts {
    
    private struct Montserrat {
        static let regular = "Montserrat-Regular"
        static let medium = "Montserrat-Medium"
        static let semibold = "Montserrat-SemiBold"
        static let bold = "Montserrat-bold"
    }
    
    public static var largeTitle: Font { return Font.custom(Montserrat.bold, size: 34) }
    public static var title1: Font { return Font.custom(Montserrat.bold, size: 28) }
    public static var title2: Font { return Font.custom(Montserrat.bold, size: 22) }
    public static var title3: Font { return Font.custom(Montserrat.bold, size: 20) }
    public static var subtitle1: Font { return Font.custom(Montserrat.semibold, size: 16) }
    public static var subtitle2: Font { return Font.custom(Montserrat.medium, size: 14) }
    public static var paragraph1: Font { return Font.custom(Montserrat.regular, size: 16) }
    public static var paragraph2: Font { return Font.custom(Montserrat.regular, size: 14) }
    public static var caption: Font { return Font.custom(Montserrat.medium, size: 12) }
    public static var overline: Font { return Font.custom(Montserrat.bold, size: 12).lowercaseSmallCaps() }
    public static var button: Font { return Font.custom(Montserrat.semibold, size: 16) }
}

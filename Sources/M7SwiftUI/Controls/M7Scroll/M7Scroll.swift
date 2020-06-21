//
//  File.swift
//  
//
//  Created by 18391981 on 17.06.2020.
//

//
//  File.swift
//
//
//  Created by 18391981 on 14.06.2020.
//

import SwiftUI

public enum M7ScrollViewColor: Int, CaseIterable {
    case primary
    case secondary
    case tertiary
}

public enum M7ScrollViewPadding: Int, CaseIterable {
    case m
    case s
}

public struct M7Scroll<Content: View>: View {
    
    private struct Constants {
        
        /// Colors
        static var colorPrimary: Color { return M7Colors.background.primary }
        static var colorSecondary: Color { return M7Colors.background.secondary }
        static var colorTertiary: Color { return M7Colors.background.tertiary }
        
        /// Size
        static var paddingM: CGFloat { return M7Paddings.all.m }
        static var paddingS: CGFloat { return M7Paddings.all.s }
    }
    
    private let content: Content
    
    public var backgroundColor: Color = Constants.colorPrimary
    
    public var background: M7ScrollViewColor
    
    public var padding: M7ScrollViewPadding
    
    public var paddingSize: CGFloat = 0
    
    public init(background: M7ScrollViewColor = .primary,
         padding: M7ScrollViewPadding = .m,
         @ViewBuilder content: () -> Content) {
        
        self.content = content()
        self.padding = padding
        self.background = background
        
        //setupNavigationViewStyle()

        //self.setBackground(background)
        //self.setPadding(padding)
    }
    
    public var body: some View {
        
        ScrollView {
        
        self.content
//            .padding(.all, paddingSize)
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .background(backgroundColor)
//            .cornerRadius(M7Radius.m)

        }.modifier(AdaptsToKeyboard())//.padding(.bottom, keyboard.currentHeight)
        
    }
    
    private mutating func setPadding(_ padding: M7BackgroundPadding) {
        switch padding {
        case .m:
            self.paddingSize = Constants.paddingM
        case .s:
            self.paddingSize = Constants.paddingS
        }
    }
    
    private mutating func setBackground(_ background: M7BackgroundColor) {
        switch background {
        case .primary:
            self.backgroundColor = Constants.colorPrimary
        case .secondary:
            self.backgroundColor = Constants.colorSecondary
        case .tertiary:
            self.backgroundColor = Constants.colorTertiary
        }
    }
    
}



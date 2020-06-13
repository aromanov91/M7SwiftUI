//
//  M7Texttest.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

public enum M7TextStyles: Int, CaseIterable {
    case largeTitle
    case title1
    case title2
    case title3
    case subtitle1
    case subtitle2
    case paragraph1
    case paragraph2
    case button
    case caption
    case overline
}

public struct M7Text: View {
    
    private struct Constants {
        
        /// Size
        static var lineSpacingLargeTitle: CGFloat = 6
        static var lineSpacingTitle1: CGFloat = 1
        static var lineSpacingTitle2: CGFloat = 1
        static var lineSpacingTitle3: CGFloat = -1
        static var lineSpacingSubtitle1: CGFloat = 5
        static var lineSpacingSubtitle2: CGFloat = 7
        static var lineSpacingParagraph1: CGFloat = 5
        static var lineSpacingParagraph2: CGFloat = 2
        static var lineSpacingButton: CGFloat = 4
        static var lineSpacingCaption: CGFloat = 2
        static var lineSpacingOverline: CGFloat = 6
    }
    
    let text: String
    
    let style: M7TextStyles
    
    var textStyle: Font = Font.body
    
    var lineSpacing: CGFloat = 0
    
    public init(_ text: String, style: M7TextStyles = .button) {
        self.text = text
        self.style = style
        setTextStyle(style)
    }
    
    public var body: some View {
        Text(text).font(textStyle).lineSpacing(lineSpacing)
    }
    
    private mutating func setTextStyle(_ style: M7TextStyles) {
        switch style {
        case .largeTitle:
            self.textStyle = M7Fonts.largeTitle
            self.lineSpacing = Constants.lineSpacingLargeTitle
        case .title1:
            self.textStyle = M7Fonts.title1
            self.lineSpacing = Constants.lineSpacingTitle1
        case .title2:
            self.textStyle = M7Fonts.title2
            self.lineSpacing = Constants.lineSpacingTitle2
        case .title3:
            self.textStyle = M7Fonts.title3
            self.lineSpacing = Constants.lineSpacingTitle3
        case .subtitle1:
            self.textStyle = M7Fonts.subtitle1
            self.lineSpacing = Constants.lineSpacingSubtitle1
        case .subtitle2:
            self.textStyle = M7Fonts.subtitle2
            self.lineSpacing = Constants.lineSpacingSubtitle2
        case .paragraph1:
            self.textStyle = M7Fonts.paragraph1
            self.lineSpacing = Constants.lineSpacingParagraph1
        case .paragraph2:
            self.textStyle = M7Fonts.paragraph2
            self.lineSpacing = Constants.lineSpacingParagraph2
        case .button:
            self.textStyle = M7Fonts.button
            self.lineSpacing = Constants.lineSpacingButton
        case .caption:
            self.textStyle = M7Fonts.caption
            self.lineSpacing = Constants.lineSpacingCaption
        case .overline:
            self.textStyle = M7Fonts.overline
            self.lineSpacing = Constants.lineSpacingOverline
        }
    }
}

//struct M7Texttest_Previews: PreviewProvider {
//    static var previews: some View {
//        M7Texttest()
//    }
//}

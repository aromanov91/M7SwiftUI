//
//  M7TextField.swift
//
//  Created by Alexander Romanov on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import Combine


public enum M7TextFieldHelperStyle {
    case none
    case helperText
    case errorText
    case sussesText
}

public struct M7TextField: View {
    
    public var placeholder: String
    @Binding public var text: String
    @Binding public var helperText: String
    @Binding public var helperStyle: M7TextFieldHelperStyle
    
    
    
    public var secure: Bool = false
    @State private var focused: Bool = false
    
    public init(placeholder: String,
                text: Binding<String>,
                helperText: Binding<String> = .constant(""),
                helperStyle: Binding<M7TextFieldHelperStyle> = .constant(.none)) {
        self.placeholder = placeholder
        self._text = text
        self._helperText = helperText
        self._helperStyle = helperStyle
    }
    
    public var body: some View {
        
        
        VStack {
            HStack {
                M7Text(placeholder, style: .subtitle2)
                Spacer()
            }
            
            VStack {
                if secure {
                    SecureField("", text: $text)
                } else {
                    TextField("", text: $text, onEditingChanged: { focused in
                        self.focused = focused
                    }
                    )
                }
            }.padding()
                .background(focused ? M7Colors.surface.tertiary : M7Colors.surface.secondary)
                .cornerRadius(M7Radius.m)
                .font(M7Fonts.subtitle1)
            
            if helperText != "" {
                
                HStack {
                    
                    if helperStyle == .helperText {
                        M7Text(helperText, style: .subtitle2).foregroundColor(M7Colors.onSurface.mediumEmphasis)
                    } else if helperStyle == .errorText {
                        M7Text(helperText, style: .subtitle2).foregroundColor(M7Colors.error)
                    } else if helperStyle == .sussesText {
                        M7Text(helperText, style: .subtitle2).foregroundColor(M7Colors.success)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
//.padding()
//.background(M7Colors.surface.secondary)
//.cornerRadius(M7Radius.m)
//.font(M7Fonts.subtitle1)

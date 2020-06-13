//
//  M7TextField.swift
//
//  Created by Alexander Romanov on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

public struct M7TextField: View {
    
    @State var text: String = ""
    private var placeholder = ""
    
    public init(placeholder: String) {
        self.placeholder = placeholder
    }
    
    public var body: some View {
        
        TextField(placeholder, text: $text)
            .padding()
            .background(M7Colors.surface.secondary)
            .cornerRadius(M7Radius.m)
            .font(M7Fonts.subtitle1)
            .foregroundColor(M7Colors.onSurface.highEmphasis)

        //.background(RoundedRectangle(cornerRadius: 12))
        //.foregroundColor(Color.black)
        
    }
}


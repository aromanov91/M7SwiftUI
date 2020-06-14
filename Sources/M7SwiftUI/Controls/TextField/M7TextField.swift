//
//  M7TextField.swift
//
//  Created by Alexander Romanov on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import Combine


//public struct MyTextField: View {
//    @Binding public var text: String
//    public var label: String
//   // public var secure: Bool = false
//
//    public init() {}
//
//    public var body: some View {
//        VStack {
//            HStack {
//                Text(label)
//                Spacer()
//            }
//
//
//                TextField("", text: $text)
//
//
//            Divider()
//        }
//        .padding()
//    }
//}


public struct M7TextField: View {
    
    @Binding public var text: String
    public  var placeholder: String
    public var secure: Bool = false
    
    public init(placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
//        VStack {
//            HStack {
//                Text(placeholder)
//                Spacer()
//            }
        
        Group {
//
            if secure {
                SecureField("", text: $text)
                    .padding()
                    .background(M7Colors.surface.secondary)
                    .cornerRadius(M7Radius.m)
                    .font(M7Fonts.subtitle1)
            } else {
                TextField("", text: $text)  
                    .padding()
                    .background(M7Colors.surface.secondary)
                    .cornerRadius(M7Radius.m)
                    .font(M7Fonts.subtitle1) 
                
                
            }
            
        }
            
//            Divider()
        
    }
    
    

}


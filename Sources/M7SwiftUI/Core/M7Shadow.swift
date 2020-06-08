//
//  M7Shadow.swift
//  DSOneDemo
//
//  Created by 18391981 on 31.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

open class M7Shadow {
    
    open class shadowCreate {
        var color: Color
        var opacity: Double
        var radius: CGFloat
        var x: CGFloat
        var y: CGFloat
        
        init(color: Color, opacity: Double, radius: CGFloat, x: CGFloat, y: CGFloat) {
            self.color = color
            self.opacity = opacity
            self.radius = radius
            self.x = x
            self.y = y
        }
    }
    
    static var z0 = shadowCreate(color: Color.clear, opacity: 0, radius: 0, x: 0, y: 0)
    static var z1 = shadowCreate(color: Color.black, opacity: 0.08, radius: 8, x: 0, y: 2)
    static var z2 = shadowCreate(color: Color.black, opacity: 0.08, radius: 16, x: 0, y: 4)
    static var z3 = shadowCreate(color: Color.black, opacity: 0.12, radius: 24, x: 0, y: 8)
    static var z4 = shadowCreate(color: Color.black, opacity: 0.16, radius: 34, x: 0, y: 12)
}

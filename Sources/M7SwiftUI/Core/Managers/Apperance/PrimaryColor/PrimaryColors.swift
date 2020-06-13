//
//  PrimaryColor.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 23.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

// MARK: - Protocol
protocol PrimaryColor {
    var name: String { get }
    var color: Color { get }
}

// MARK: - Colors
struct RedColor: PrimaryColor {
    var name = "RedColor"
    var color: Color = Color.red
}

struct GreenColor: PrimaryColor {
    var name = "GreenColor"
    var color: Color = Color.green
}

struct BlueColor: PrimaryColor {
    var name = "BlueColor"
    var color: Color = Color.blue
}


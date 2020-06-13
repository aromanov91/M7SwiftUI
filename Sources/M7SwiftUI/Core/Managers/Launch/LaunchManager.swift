//
//  LaunchManager.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 21.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import Foundation

public class LaunchManager {
    
    public static let shared = LaunchManager()
    
    public func onStart() {
        
        ApperanceManager.shared.loadAndSetApperance()
        
    }
}

//
//  ApperancManager.swift
//  DSOneDemo
//
//  Created by 18391981 on 22.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import Combine

public class ApperanceManager: ObservableObject {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var apperance: ApperanceTheme?
    
    static var shared: ApperanceManager = {
        let apperanceStore = ApperanceManager()
        return apperanceStore
    }()
    
    private enum Keys {
        public static let apperance = "Theme.Default"
    }
    
    public let cancellable: Cancellable
    public let defaults: UserDefaults
    
    public let objectWillChange = PassthroughSubject<Void, Never>()
    
    public init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        
        defaults.register(defaults: [
            Keys.apperance: ApperanceThemeTypes.system.rawValue
        ])
        
        cancellable = NotificationCenter.default
            .publisher(for: UserDefaults.didChangeNotification)
            .map { _ in () }
            .subscribe(objectWillChange)
    }
    
    // MARK: - Apperance
    public func setApperance(apperance: ApperanceThemeTypes) {
        
        switch apperance {
        case .system:
            self.apperance = SystemApperance()
        case .light:
            self.apperance = LightApperance()
        case .dark:
            self.apperance = DarkApperance()
        }
    }
    
    public func loadAndSetApperance() {
        setApperance(apperance: self.apperanceType)
        
    }
    
    public var apperanceType: ApperanceThemeTypes {
        get {
            return defaults.string(forKey: Keys.apperance)
                .flatMap { ApperanceThemeTypes(rawValue: $0) } ?? .system
        }
        
        set {
            defaults.set(newValue.rawValue, forKey: Keys.apperance)
            defaults.synchronize()
            
            setApperance(apperance: newValue)
        }
    }
    
}

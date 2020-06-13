//
//  Themes.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 17.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

// MARK: - Apperance types
public enum ApperanceThemeTypes: String, CaseIterable {
    case system
    case light
    case dark
}

// MARK: - Protocol
protocol ApperanceTheme {
    var name: String { get }
    
    var primary: Color { get }
    var onPrimaryHighEmphasis: Color { get }
    var onPrimaryMediumEmphasis: Color { get }
    var onPrimaryDisabled: Color { get }
    
    var backgroundPrimary: Color { get }
    var backgroundSecondary: Color { get }
    var backgroundTertiary: Color { get }
    
    var onBackgroundHighEmphasis: Color { get }
    var onBackgroundMediumEmphasis: Color { get }
    var onBackgroundDisabled: Color { get }
    
    var surfacePrimary: Color { get }
    var surfaceSecondary: Color { get }
    var surfaceTertiary: Color { get }
    
    var onSurfaceHighEmphasis: Color { get }
    var onSurfaceMediumEmphasis: Color { get }
    var onSurfaceDisabled: Color { get }
    
    var error: Color { get }
    var success: Color { get }
    var warning: Color { get }
}

// MARK: - Themes

public struct SystemApperance: ApperanceTheme {
    
    var name = "System Apperance"
    
    public var primary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.blue500
        } else {
            return Palette.blue500
        }
    }
    
    public var onPrimaryHighEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white
        } else {
            return Palette.white
        }
    }
    
    public var onPrimaryMediumEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white.opacity(0.8)
        } else {
            return Palette.white.opacity(0.8)
        }
    }
    
    public var onPrimaryDisabled: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white.opacity(0.3)
        } else {
            return Palette.white.opacity(0.3)
        }
    }
    
    public var backgroundPrimary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white
        } else {
            return Palette.gray1
        }
    }
    
    public var backgroundSecondary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray6
        } else {
            return Palette.gray2
        }
    }
    
    public var backgroundTertiary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray5
        } else {
            return Palette.gray3
        }
    }
    
    public var onBackgroundHighEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray2
        } else {
            return Palette.white
        }
    }
    
    public var onBackgroundMediumEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray3
        } else {
            return Palette.gray6
        }
    }
    
    public var onBackgroundDisabled: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray4
        } else {
            return Palette.gray5
        }
    }
    
    public var surfacePrimary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white
        } else {
            return Palette.gray2
        }
    }
    
    public var surfaceSecondary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray6
        } else {
            return Palette.gray3
        }
    }
    
    public var surfaceTertiary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray5
        } else {
            return Palette.gray4
        }
    }
    
    public var onSurfaceHighEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray2
        } else {
            return Palette.white
        }
    }
    
    public var onSurfaceMediumEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray3
        } else {
            return Palette.gray1
        }
    }
    
    public var onSurfaceDisabled: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.gray4
        } else {
            return Palette.gray2
        }
    }
    
    public var error: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.red500
        } else {
            return Palette.red500
        }
    }
    
    public var success: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.green500
        } else {
            return Palette.green500
        }
    }
    
    public var warning: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.orange500
        } else {
            return Palette.orange500
        }
    }
}

/// Dark theme
public struct LightApperance: ApperanceTheme {
    
    public var name = "Light Apperance"
    
    public var primary: Color = Palette.blue500
    
    public var onPrimaryHighEmphasis: Color = Palette.white
    
    public  var onPrimaryMediumEmphasis: Color = Palette.white.opacity(0.8)
    
    public var onPrimaryDisabled: Color = Palette.white.opacity(0.3)
    
    public  var backgroundPrimary: Color = Palette.white
    
    public  var backgroundSecondary: Color = Palette.gray6
    
    public var backgroundTertiary: Color = Palette.gray5
    
    public var onBackgroundHighEmphasis: Color = Palette.gray2
    
    public var onBackgroundMediumEmphasis: Color = Palette.gray3
    
    public var onBackgroundDisabled: Color = Palette.gray4
    
    public var surfacePrimary: Color = Palette.white
    
    public var surfaceSecondary: Color = Palette.gray6
    
    public var surfaceTertiary: Color = Palette.gray5
    
    public var onSurfaceHighEmphasis: Color = Palette.gray2
    
    public var onSurfaceMediumEmphasis: Color = Palette.gray3
    
    public var onSurfaceDisabled: Color = Palette.gray4
    
    public var error: Color = Palette.red500
    
    public var success: Color = Palette.green500
    
    public var warning: Color = Palette.green500
    
    
    
}

/// Light theme
public struct DarkApperance: ApperanceTheme {
    
    public var name = "Dark Apperance"
    
    public var primary: Color = Palette.blue500
    
    public var onPrimaryHighEmphasis: Color = Palette.white
    
    public var onPrimaryMediumEmphasis: Color = Palette.white.opacity(0.8)
    
    public var onPrimaryDisabled: Color = Palette.white.opacity(0.3)
    
    public var backgroundPrimary: Color = Palette.gray1
    
    public var backgroundSecondary: Color = Palette.gray2
    
    public var backgroundTertiary: Color = Palette.gray3
    
    public var onBackgroundHighEmphasis: Color = Palette.white
    
    public var onBackgroundMediumEmphasis: Color = Palette.gray6
    
    public var onBackgroundDisabled: Color = Palette.gray5
    
    public var surfacePrimary: Color = Palette.gray2
    
    public var surfaceSecondary: Color = Palette.gray3
    
    public var surfaceTertiary: Color = Palette.gray4
    
    public var onSurfaceHighEmphasis: Color = Palette.white
    
    public var onSurfaceMediumEmphasis: Color = Palette.gray1
    
    public var onSurfaceDisabled: Color = Palette.gray2
    
    public var error: Color = Palette.red500
    
    public var success: Color = Palette.green500
    
    public var warning: Color = Palette.orange500
}

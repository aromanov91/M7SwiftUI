//
//  Themes.swift
//  DSOneDemo
//
//  Created by 18391981 on 17.05.2020.
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

struct SystemApperance: ApperanceTheme {
    
    var name = "System Apperance"
    
    var primary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.blue500
        } else {
            return Palette.blue500
        }
    }
    
    var onPrimaryHighEmphasis: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white
        } else {
            return Palette.white
        }
    }
    
    var onPrimaryMediumEmphasis: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white.opacity(0.8)
           } else {
               return Palette.white.opacity(0.8)
           }
       }
    
    var onPrimaryDisabled: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.white.opacity(0.3)
           } else {
               return Palette.white.opacity(0.3)
           }
       }
    
    var backgroundPrimary: Color {
        if UITraitCollection.current.userInterfaceStyle == .light {
            return Palette.white
        } else {
            return Palette.gray1
        }
    }
    
    var backgroundSecondary: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray6
           } else {
               return Palette.gray2
           }
       }
    
    var backgroundTertiary: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray5
           } else {
               return Palette.gray3
           }
       }
    
    var onBackgroundHighEmphasis: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray2
           } else {
               return Palette.white
           }
       }
    
    var onBackgroundMediumEmphasis: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray3
           } else {
               return Palette.gray6
           }
       }
    
    var onBackgroundDisabled: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray4
           } else {
               return Palette.gray5
           }
       }
    
    var surfacePrimary: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.white
           } else {
               return Palette.gray2
           }
       }
    
    var surfaceSecondary: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray6
           } else {
               return Palette.gray3
           }
       }
    
    var surfaceTertiary: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray5
           } else {
               return Palette.gray4
           }
       }
    
    var onSurfaceHighEmphasis: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray2
           } else {
               return Palette.white
           }
       }
    
    var onSurfaceMediumEmphasis: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray3
           } else {
            return Palette.gray1
           }
       }
    
    var onSurfaceDisabled: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.gray4
           } else {
               return Palette.gray2
           }
       }
    
    var error: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.red500
           } else {
               return Palette.red500
           }
       }
    
    var success: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.green500
           } else {
               return Palette.green500
           }
       }
    
    var warning: Color {
           if UITraitCollection.current.userInterfaceStyle == .light {
               return Palette.orange500
           } else {
               return Palette.orange500
           }
       }
}

/// Dark theme
struct LightApperance: ApperanceTheme {
    
     var name = "Light Apperance"
    
    var primary: Color = Palette.blue500
    
    var onPrimaryHighEmphasis: Color = Palette.white
    
    var onPrimaryMediumEmphasis: Color = Palette.white.opacity(0.8)
    
    var onPrimaryDisabled: Color = Palette.white.opacity(0.3)
    
    var backgroundPrimary: Color = Palette.white
    
    var backgroundSecondary: Color = Palette.gray6
    
    var backgroundTertiary: Color = Palette.gray5
    
    var onBackgroundHighEmphasis: Color = Palette.gray2
    
    var onBackgroundMediumEmphasis: Color = Palette.gray3
    
    var onBackgroundDisabled: Color = Palette.gray4
    
    var surfacePrimary: Color = Palette.white
    
    var surfaceSecondary: Color = Palette.gray6
    
    var surfaceTertiary: Color = Palette.gray5
    
    var onSurfaceHighEmphasis: Color = Palette.gray2
    
    var onSurfaceMediumEmphasis: Color = Palette.gray3
    
    var onSurfaceDisabled: Color = Palette.gray4
    
    var error: Color = Palette.red500
    
    var success: Color = Palette.green500
    
    var warning: Color = Palette.green500
    
   

}

/// Light theme
struct DarkApperance: ApperanceTheme {
    
     var name = "Dark Apperance"
    
    var primary: Color = Palette.blue500
    
    var onPrimaryHighEmphasis: Color = Palette.white
    
    var onPrimaryMediumEmphasis: Color = Palette.white.opacity(0.8)
    
    var onPrimaryDisabled: Color = Palette.white.opacity(0.3)
    
    var backgroundPrimary: Color = Palette.gray1
    
    var backgroundSecondary: Color = Palette.gray2
    
    var backgroundTertiary: Color = Palette.gray3
    
    var onBackgroundHighEmphasis: Color = Palette.white
    
    var onBackgroundMediumEmphasis: Color = Palette.gray6
    
    var onBackgroundDisabled: Color = Palette.gray5
    
    var surfacePrimary: Color = Palette.gray2
    
    var surfaceSecondary: Color = Palette.gray3
    
    var surfaceTertiary: Color = Palette.gray4
    
    var onSurfaceHighEmphasis: Color = Palette.white
    
    var onSurfaceMediumEmphasis: Color = Palette.gray1
    
    var onSurfaceDisabled: Color = Palette.gray2
    
    var error: Color = Palette.red500
    
    var success: Color = Palette.green500
    
    var warning: Color = Palette.orange500
}

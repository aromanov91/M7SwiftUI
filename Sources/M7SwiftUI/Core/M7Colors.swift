//
//  OneColors.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 16.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

public class M7Colors {
    
    /// Primary
    public static var primary: Color {
        return ApperanceManager.shared.apperance?.primary ?? Color.blue
    }
    
    /// On Primary
    public enum onPrimary {
        
        /// High Emphasis
        public static var highEmphasis: Color {
            return ApperanceManager.shared.apperance?.onPrimaryHighEmphasis ?? Color.white
        }
        
        /// Medium Emphasis
        public static var mediumEmphasis: Color {
            return ApperanceManager.shared.apperance?.onPrimaryMediumEmphasis ?? Color.white.opacity(0.7)
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onPrimaryDisabled ?? Color.gray.opacity(0.4)
        }
    }
    
    /// Background
    public enum background {
        
        /// High Emphasis
        public static var primary: Color {
            return ApperanceManager.shared.apperance?.backgroundPrimary ?? Color.black.opacity(0.97)
        }
        
        /// Medium Emphasis
        public static var secondary: Color {
            return ApperanceManager.shared.apperance?.backgroundSecondary ?? Color.black.opacity(0.95)
        }
        
        /// Disabled
        public static var tertiary: Color {
            return ApperanceManager.shared.apperance?.backgroundTertiary ?? Color.black.opacity(0.90)
        }
    }
    
    /// On Background
    public enum onBackground {
        
        /// High Emphasis
        public static var highEmphasis: Color {
            return ApperanceManager.shared.apperance?.onBackgroundHighEmphasis ?? Color.black.opacity(0.95)
        }
        
        /// Medium Emphasis
        public static var mediumEmphasis: Color {
            return ApperanceManager.shared.apperance?.onBackgroundMediumEmphasis ?? Color.black.opacity(0.75)
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onBackgroundDisabled ?? Color.black.opacity(0.60)
        }
    }

    /// Background
    public enum surface {
        
        /// High Emphasis
        public static var primary: Color {
            return ApperanceManager.shared.apperance?.surfacePrimary ?? Color.white
        }
        
        /// Medium Emphasis
        public static var secondary: Color {
            return ApperanceManager.shared.apperance?.surfaceSecondary ?? Color.gray.opacity(0.2)
        }
        
        /// Disabled
        public static var tertiary: Color {
            return ApperanceManager.shared.apperance?.surfaceTertiary ?? Color.gray.opacity(0.4)
        }
    }
    
    /// On Background
    public enum onSurface {
        
        /// High Emphasis
        public static var highEmphasis: Color {
            return ApperanceManager.shared.apperance?.onSurfaceHighEmphasis ?? Color.black.opacity(0.90)
        }
        
        /// Medium Emphasis
        public static var mediumEmphasis: Color {
            return ApperanceManager.shared.apperance?.onSurfaceMediumEmphasis ?? Color.black.opacity(0.75)
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onSurfaceDisabled ?? Color.black.opacity(0.60)
        }
    }
    
    /// Error
    public static var error: Color {
        return ApperanceManager.shared.apperance?.error ?? Color.red
    }
    
    /// Success
    public static var success: Color {
        return ApperanceManager.shared.apperance?.success ?? Color.green
    }
    
    /// Warning
    public static var warning: Color {
        return ApperanceManager.shared.apperance?.warning ?? Color.yellow
    }
    
    
    /// Link
    public static var link: Color {
        return ApperanceManager.shared.apperance?.primary ?? Color.blue
    }
}

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
            return ApperanceManager.shared.apperance?.onPrimaryMediumEmphasis ?? Color.white
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onPrimaryDisabled ?? Color.gray
        }
    }
    
    /// Background
    public enum background {
        
        /// High Emphasis
        public static var primary: Color {
            return ApperanceManager.shared.apperance?.backgroundPrimary ?? Color.white
        }
        
        /// Medium Emphasis
        public static var secondary: Color {
            return ApperanceManager.shared.apperance?.backgroundSecondary ?? Color.white
        }
        
        /// Disabled
        public static var tertiary: Color {
            return ApperanceManager.shared.apperance?.backgroundTertiary ?? Color.gray
        }
    }
    
    /// On Background
    public enum onBackground {
        
        /// High Emphasis
        public static var highEmphasis: Color {
            return ApperanceManager.shared.apperance?.onBackgroundHighEmphasis ?? Color.white
        }
        
        /// Medium Emphasis
        public static var mediumEmphasis: Color {
            return ApperanceManager.shared.apperance?.onBackgroundMediumEmphasis ?? Color.white
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onBackgroundDisabled ?? Color.gray
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
            return ApperanceManager.shared.apperance?.surfaceSecondary ?? Color.white
        }
        
        /// Disabled
        public static var tertiary: Color {
            return ApperanceManager.shared.apperance?.surfaceTertiary ?? Color.gray
        }
    }
    
    /// On Background
    public enum onSurface {
        
        /// High Emphasis
        public static var highEmphasis: Color {
            return ApperanceManager.shared.apperance?.onSurfaceHighEmphasis ?? Color.white
        }
        
        /// Medium Emphasis
        public static var mediumEmphasis: Color {
            return ApperanceManager.shared.apperance?.onSurfaceMediumEmphasis ?? Color.white
        }
        
        /// Disabled
        public static var disabled: Color {
            return ApperanceManager.shared.apperance?.onSurfaceDisabled ?? Color.gray
        }
    }
    
    /// Error
    public static var error: Color {
        return ApperanceManager.shared.apperance?.error ?? Color.blue
    }
    
    /// Success
    public static var success: Color {
        return ApperanceManager.shared.apperance?.success ?? Color.blue
    }
    
    /// Warning
    public static var warning: Color {
        return ApperanceManager.shared.apperance?.warning ?? Color.blue
    }
    
    
    /// Link
    public static var link: Color {
        return ApperanceManager.shared.apperance?.primary ?? Color.blue
    }
}

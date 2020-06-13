//
//  ThemeSelector.swift
//  DSOneDemo
//
//  Created by Alexander Romanov on 17.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI

public struct ThemeSelector: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @EnvironmentObject var settings: ApperanceManager
    
    public var body: some View {
        List {
            
            HStack {
                
                Rectangle()
                    .frame(width: 20, height: 20)
                    .cornerRadius(10)
                    .foregroundColor(M7Colors.primary)
                
                Text("Primary").foregroundColor(M7Colors.onSurface.highEmphasis)
                
                Spacer()
            }.background(M7Colors.background.primary)
            
            Button(action: {
                print("Select System Apperance")
                self.settings.apperanceType = ApperanceThemeTypes.system
                ApperanceManager.shared.setApperance(apperance: .system)
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.gray)
                    
                    Text("System")
                    
                    Spacer()
                }
            }
            
            Button(action: {
                print("Select Light Apperance")
                self.settings.apperanceType = ApperanceThemeTypes.light
                ApperanceManager.shared.setApperance(apperance: .light)
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    
                    Text("Light")
                    
                    Spacer()
                }
                
            }
            
            Button(action: {
                print("Select blue Apperance")
                self.settings.apperanceType = ApperanceThemeTypes.dark
                ApperanceManager.shared.setApperance(apperance: .dark)
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.black)
                    
                    Text("Black")
                    
                    Spacer()
                }
            }
            
        }.navigationBarTitle("Theme")
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
        
    }
}


struct ThemeSelector_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSelector()
    }
}

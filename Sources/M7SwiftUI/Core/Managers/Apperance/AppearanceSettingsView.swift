//
//  ThemeView.swift
//  DSOneDemo
//
//  Created by 18391981 on 17.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//
/*
import SwiftUI

struct AppearanceSettingsView: View {
    
   @EnvironmentObject var apperance: ApperanceManager
    
    var body: some View {
        
        List {
            
            NavigationLink(destination: ThemeSelector()) {
                Text("Theme")
                Spacer()
                Text("\(apperance.apperanceType.rawValue)")
            }
            
            NavigationLink(destination: PrimaryColorSelectorView()) {
                Text("Primary")
                Spacer()
                Text(ThemeManager.shared.getCurrentPrimaryColorName())
            }
            
        }.navigationBarTitle("Appearance")
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
        
        
    }
}
*/

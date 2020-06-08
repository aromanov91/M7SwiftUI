//
//  File.swift
//  DSOneDemo
//
//  Created by 18391981 on 19.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//
/*
import SwiftUI

struct PrimaryColorSelectorView: View {
    var body: some View {
        List {
            
            Button(action: {
                print("Select main color")
                ThemeManager.shared.setAndSavePrimaryColor(color: RedColor())
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.red)
                    
                    Text("Main")
                    
                    Spacer()
                }
            }
            
            Button(action: {
                print("Select green color")
                ThemeManager.shared.setAndSavePrimaryColor(color: GreenColor())
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.green)
                    
                    Text("Green")
                    
                    Spacer()
                }
                
            }
            
            Button(action: {
                print("Select blue color")
                ThemeManager.shared.setAndSavePrimaryColor(color: BlueColor())
            }) {
                HStack {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .cornerRadius(10)
                        .foregroundColor(Color.blue)
                    
                    Text("Blue")
                    
                    Spacer()
                }
                
            }
            
            
        }.navigationBarTitle("Theme")
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
        
    }
}


struct PrimaryColorSelector_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryColorSelectorView()
    }
}
*/

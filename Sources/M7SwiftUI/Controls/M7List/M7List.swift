//
//  File.swift
//  
//
//  Created by 18391981 on 14.06.2020.
//

import SwiftUI

public enum M7ListViewColor: Int, CaseIterable {
    case primary
    case secondary
    case tertiary
}

public enum M7ListViewPadding: Int, CaseIterable {
    case m
    case s
}

public struct M7List<M7ListView: View>: View {
    
    private struct Constants {
        
        /// Colors
        static var colorPrimary: Color { return M7Colors.background.primary }
        static var colorSecondary: Color { return M7Colors.background.secondary }
        static var colorTertiary: Color { return M7Colors.background.tertiary }
        
        /// Size
        static var paddingM: CGFloat { return M7Paddings.all.m }
        static var paddingS: CGFloat { return M7Paddings.all.s }
    }
    
    private let content: M7ListView
    
    public var backgroundColor: Color = Constants.colorPrimary
    
    public var background: M7ListViewColor
    
    public var padding: M7ListViewPadding
    
    public var paddingSize: CGFloat = 0
    
    public init(background: M7ListViewColor = .primary,
         padding: M7ListViewPadding = .m,
         @ViewBuilder content: () -> M7ListView) {
        
        self.content = content()
        self.padding = padding
        self.background = background
        
        setupNavigationViewStyle()

        //self.setBackground(background)
        //self.setPadding(padding)
    }
    
    public var body: some View {
        
        List {
        
        self.content
//            .padding(.all, paddingSize)
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .background(backgroundColor)
//            .cornerRadius(M7Radius.m)
            
            
        }
        
    }
    
    private mutating func setPadding(_ padding: M7BackgroundPadding) {
        switch padding {
        case .m:
            self.paddingSize = Constants.paddingM
        case .s:
            self.paddingSize = Constants.paddingS
        }
    }
    
    private mutating func setBackground(_ background: M7BackgroundColor) {
        switch background {
        case .primary:
            self.backgroundColor = Constants.colorPrimary
        case .secondary:
            self.backgroundColor = Constants.colorSecondary
        case .tertiary:
            self.backgroundColor = Constants.colorTertiary
        }
    }
    
    func setupNavigationViewStyle() {
        
        //UITableView.appearance().separatorStyle = .none
        let standard = UINavigationBarAppearance()
                   
              standard.configureWithOpaqueBackground()
        
        
        //UITableViewHeaderFooterView.appearance().tintColor = UIColor.white
        
       standard.largeTitleTextAttributes = [
            
            .foregroundColor: UIColor.black,
            .font : UIFont(name:"Montserrat-Bold", size: 34)!]
        
        standard.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont(name: "Montserrat-Bold", size: 20)!]
      

        //standard.backgroundColor = .systemPink
        //standard.titlePositionAdjustment = UIOffset(horizontal: -30, vertical: 0)
        //standard.titleTextAttributes = [.foregroundColor: UIColor.white]
          
        let button = UIBarButtonItemAppearance(style: .plain)
        button.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
        standard.buttonAppearance = button
          
        let done = UIBarButtonItemAppearance(style: .done)
        done.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
        standard.doneButtonAppearance = done
        
        
        standard.buttonAppearance.normal.titleTextAttributes = [ .foregroundColor: UIColor.systemBlue,
                           .font : UIFont(name:"Montserrat-SemiBold", size: 16)!]
        
               standard.doneButtonAppearance.normal.titleTextAttributes = [ .foregroundColor: UIColor.systemBlue,
                           .font : UIFont(name:"Montserrat-SemiBold", size: 16)!]
        
       
        
          
        UINavigationBar.appearance().standardAppearance = standard
        
//        let style = UINavigationBarAppearance()
//
//
//
//
//
//        UINavigationBar.appearance().standardAppearance.buttonAppearance.normal.titleTextAttributes = [ .foregroundColor: UIColor.black,
//                   .font : UIFont(name:"Montserrat-Bold", size: 20)!]
//        UINavigationBar.appearance().standardAppearance.doneButtonAppearance.normal.titleTextAttributes = [ .foregroundColor: UIColor.black,
//                   .font : UIFont(name:"Montserrat-Bold", size: 20)!]
//
//        UINavigationBar.appearance().standardAppearance = style
        
        

    }
    
    //     geometry.size.width >= CGFloat(375) ? M7Paddings.all.m :  M7Paddings.all.s
    
}


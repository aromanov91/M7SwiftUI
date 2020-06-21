//
//  File.swift
//  
//
//  Created by 18391981 on 14.06.2020.
//

import SwiftUI
import Combine

public enum M7ListViewColor: Int, CaseIterable {
    case primary
    case secondary
    case tertiary
}

public enum M7ListViewPadding: Int, CaseIterable {
    case m
    case s
}

public struct M7List<Content: View>: View {
    
    private struct Constants {
        
        /// Colors
        static var colorPrimary: Color { return M7Colors.background.primary }
        static var colorSecondary: Color { return M7Colors.background.secondary }
        static var colorTertiary: Color { return M7Colors.background.tertiary }
        
        /// Size
        static var paddingM: CGFloat { return M7Paddings.all.m }
        static var paddingS: CGFloat { return M7Paddings.all.s }
    }
    
    private let content: Content
    
    public var backgroundColor: Color = Constants.colorPrimary
    
    public var background: M7ListViewColor
    
    public var padding: M7ListViewPadding
    
    public var paddingSize: CGFloat = 0
    
    //@ObservedObject private var keyboard = KeyboardResponder()
    
    public init(background: M7ListViewColor = .primary,
         padding: M7ListViewPadding = .m,
         @ViewBuilder content: () -> Content) {
        
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
            
            
        }.modifier(AdaptsToKeyboard())
        
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


//public class KeyboardResponder: ObservableObject {
//    private var notificationCenter: NotificationCenter
//    @Published private(set) var currentHeight: CGFloat = 0
//
//    public init(center: NotificationCenter = .default) {
//        notificationCenter = center
//        notificationCenter.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        notificationCenter.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    deinit {
//        notificationCenter.removeObserver(self)
//    }
//
//    @objc public func keyBoardWillShow(notification: Notification) {
//
//        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//            currentHeight = keyboardSize.height
//        }
//    }
//
//    @objc public func keyBoardWillHide(notification: Notification) {
//        currentHeight = 0
//    }
//}

struct AdaptsToKeyboard: ViewModifier {
    @State var currentHeight: CGFloat = 0

    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .padding(.bottom, self.currentHeight)
                .animation(.easeOut(duration: 0.16))
                .onAppear(perform: {
                    NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillShowNotification)
                        .merge(with: NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillChangeFrameNotification))
                        .compactMap { notification in
                            notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect
                    }
                    .map { rect in
                        rect.height - geometry.safeAreaInsets.bottom
                    }
                    .subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))

                    NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillHideNotification)
                        .compactMap { notification in
                            CGFloat.zero
                    }
                    .subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))
                })
        }
    }
}

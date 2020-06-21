//
//  File.swift
//  
//
//  Created by 18391981 on 16.06.2020.
//

import SwiftUI
import Combine

public struct M7SelectModal: View {
    
    
    @Binding public var  selected: String
    @State var showModal = false
    public var selectionRows: [String]
    
    public init(_ selectionRows: [String] = [""], selected: Binding<String> = .constant("")) {
        self.selectionRows = selectionRows
        self._selected = selected
    }
    
    public var body: some View {
        
        ZStack {
            
            M7Button(action: {
                self.showModal.toggle()
                self.selected = "sadasd"
                
            }) {
                Text(self.selected)
            }.sheet(isPresented: $showModal) {
                ModalSelect(data: self.selectionRows, selected: self.$selected, showModal: self.$showModal)
            }
            
            ZStack {
                if showModal {
                    ModalSelect(data: selectionRows,
                                selected: $selected,
                                showModal: $showModal)
                    
                }
            }
            
        }
    }
    
}


public struct ModalSelect: View {
    
    public var data: [String]
    @Binding var selected : String
    @Binding var showModal : Bool
    
    //    init(_ rows: [String]) {
    //        self.data = rows
    //    }
    
    public var body: some View {
        
        NavigationView{
            
            M7List {
                ForEach(data,id: \.self) { i in
                    
                    M7RowButton(i, style: .row) {
                        self.selected = i
                        self.showModal.toggle()
                    }
            
                }
            }.navigationBarTitle("Select")
        }
    }
}


//
//
//public struct M7Select3333: View {
//
//    @State var selected = "Select color"
//    @State var show = false
//
//    public var selections: [String]
//
//    public init() {}
//
//    public var body: some View {
//
//        ZStack{
//
//            VStack{
//
//                M7Button(action: {
//                    self.show.toggle()
//                }) {
//                    Text(self.selected)
//                }
//
//            }
//
//            VStack{
//
//                Spacer()
//
//                M7SelectList(selected: self.$selected, show: self.$show, data: self.data).offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)
//
//            }.background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
//
//        }.animation(.default)
//    }
//}
//
//public struct M7SelectList : View {
//
//    @Binding var selected : String
//    @Binding var show : Bool
//
//    public var data: [String]
//
//    public var body : some View{
//
//        VStack(alignment: .leading, spacing: 20) {
//
//            M7Text("Filter By", style: .largeTitle).padding(.top)
//
//            ForEach(data,id: \.self) { i in
//
//                Button(action: {
//
//                    self.selected = i
//
//                }) {
//
//                    HStack{
//
//                        M7Text(i)
//
//                        Spacer()
//
//                        ZStack{
//
//                            Circle().stroke(self.selected == i ? M7Colors.primary : M7Colors.onSurface.disabled, lineWidth: 2).frame(width: 24, height: 24)
//
//                            if self.selected == i {
//
//                                Circle().fill(M7Colors.primary).frame(width: 24, height: 24)
//                                    .cornerRadius(12)
//
//                                Circle().fill(Color.white).frame(width: 8, height: 8)
//                                    .cornerRadius(4)
//
//                            }
//                        }
//
//
//
//                    }.foregroundColor(.black)
//
//                }.padding(.top)
//            }
//
//            HStack{
//
//                M7Button(action: {
//                    self.show.toggle()
//                }) {
//                    Text("Continue")
//                }
//
//            }.padding(.top)
//
//        }.padding(.vertical)
//            .padding(.horizontal,25)
//            .padding(.bottom,(UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15)
//            .background(M7Colors.surface.primary)
//            .cornerRadius(30)
//    }
//}
//
//
//
//

public struct HalfModalView: View {
    
    //    MARK: - variables
    
    /// View which is presented by the modal. HalfModalContent is recommended to be used for it.
    var content: AnyView
    /// View which appears at the to ppart of the HalfModalView. It is optional.
    var header: AnyView?
    /// Decides whether the HalfModalView is presented.
    @Binding var isPresented: Bool
    
    /// The value of the modal's state: 0: closed, 1: half-opened, 2: opened.
    @State private var stateValue = 1
    
    /// The value of the drag.
    @GestureState private var translation: CGFloat = 0
    
    /// Opacity for the black background.
    @State private var backgroundOpacity = 0.0
    
    @State private var animation: Animation = .easeOut(duration: 0.5)
    
    public init(content: AnyView, header: AnyView?, isPresented: Binding<Bool>) {
        self.content = content
        self.header = header
        self._isPresented = isPresented
    }
    
    //    MARK: - UI
    public var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                
                Color.black
                    .opacity(self.backgroundOpacity)
                
                VStack(spacing: 0) {
                    HStack {
                        self.header
                        Spacer()
                        Button(action: {
                            self.backgroundOpacity = 0.0
                            withAnimation {
                                self.isPresented = false
                            }
                        }) {
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(Color(UIColor.secondarySystemFill))
                                    .font(.system(size: 31))
                                Image(systemName: "xmark")
                                    .foregroundColor(Color.secondary)
                                    .font(.system(size: 15, weight: .bold))
                            }
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    self.content
                }
                .edgesIgnoringSafeArea(.all)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
                .background(BlurView(style: .systemThickMaterial))
                .cornerRadius(15)
                .offset(y: self.stateValue == 2 ? self.translation + 50 : (self.stateValue == 1 ? geometry.size.height*0.4 + self.translation : geometry.size.height*0.7 + self.translation))
                .animation(self.animation)
                .gesture(
                    DragGesture().updating(self.$translation) { value, state, _ in
                        state = value.translation.height
                    }.onEnded { value in
                        if self.stateValue == 1 && value.translation.height < -90 {
                            self.stateValue = 2
                        } else if  self.stateValue == 1 && value.translation.height > 90 {
                            self.stateValue = 0
                            self.isPresented = false
                        } else if self.stateValue == 0 && value.translation.height < -90 {
                            self.stateValue = 1
                        } else if  self.stateValue == 0 && value.translation.height > 90 {
                            self.stateValue = 0
                            self.isPresented = false
                        } else if self.stateValue == 2 && value.translation.height > 90 && value.translation.height < 350 {
                            self.stateValue = 1
                        } else if  self.stateValue == 2 && value.translation.height >= 350 {
                            self.stateValue = 0
                            self.isPresented = false
                        }
                        
                })
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .transition(.move(edge: .bottom))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation {
                    self.backgroundOpacity = 0.08
                }
                self.animation = .interactiveSpring()
            }
        }
        
    }
    
}

public struct BlurView: UIViewRepresentable {
    
    let style: UIBlurEffect.Style
    
    public func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        return view
    }
    
    public func updateUIView(_ uiView: UIView,
                             context: UIViewRepresentableContext<BlurView>) {
        
    }
    
}


public struct HalfModalView1<Content: View> : View {
    @GestureState private var dragState = DragState.inactive
    @Binding var isShown:Bool
    
    private func onDragEnded(drag: DragGesture.Value) {
        let dragThreshold = modalHeight * (2/3)
        if drag.predictedEndTranslation.height > dragThreshold || drag.translation.height > dragThreshold{
            isShown = false
        }
    }
    
    var modalHeight:CGFloat = 400
    
    
    public var content: () -> Content
    public var body: some View {
        let drag = DragGesture()
            .updating($dragState) { drag, state, transaction in
                state = .dragging(translation: drag.translation)
        }
        .onEnded(onDragEnded)
        return Group {
            ZStack {
                //Background
                Spacer()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                    .background(isShown ? Color.black.opacity( 0.5 * fraction_progress(lowerLimit: 0, upperLimit: Double(modalHeight), current: Double(dragState.translation.height), inverted: true)) : Color.clear)
                    .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
                    .gesture(
                        TapGesture()
                            .onEnded { _ in
                                self.isShown = false
                        }
                )
                
                //Foreground
                VStack{
                    Spacer()
                    ZStack{
                        Color.white.opacity(1.0)
                            .frame(width: UIScreen.main.bounds.size.width, height:modalHeight)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        self.content()
                            .padding()
                            .padding(.bottom, 65)
                            .frame(width: UIScreen.main.bounds.size.width, height:modalHeight)
                            .clipped()
                    }
                    .offset(y: isShown ? ((self.dragState.isDragging && dragState.translation.height >= 1) ? dragState.translation.height : 0) : modalHeight)
                    .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
                    .gesture(drag)
                    
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

public enum DragState {
    case inactive
    case dragging(translation: CGSize)
    
    var translation: CGSize {
        switch self {
        case .inactive:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    
    var isDragging: Bool {
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }
}



public func fraction_progress(lowerLimit: Double = 0, upperLimit:Double, current:Double, inverted:Bool = false) -> Double{
    var val:Double = 0
    if current >= upperLimit {
        val = 1
    } else if current <= lowerLimit {
        val = 0
    } else {
        val = (current - lowerLimit)/(upperLimit - lowerLimit)
    }
    
    if inverted {
        return (1 - val)
        
    } else {
        return val
    }
    
}

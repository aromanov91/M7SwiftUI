
import SwiftUI

public enum M7RowAccessoryType {
    case none
    // case button
    //    case checkmarkSelect
    //    case checkmarkUnselect
    case radio
    case toggle
}


public struct M7Row: View {
    public var text: String
    public var type: M7RowAccessoryType
    public var leadingImage: String
    @Binding var toggle: Bool
    
    
    public init(_ text: String,
                type: M7RowAccessoryType = .none,
                leadingImage: String = "",
                toggle: Binding<Bool> = .constant(false)
        
    ) {
        self.text = text
        self.type = type
        self.leadingImage = leadingImage
        self._toggle = toggle
        
    }
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack() {
                
                if leadingImage != "" {
                    
                    M7Surface(background: .secondary, padding: .xxs) {
                        
                        Image(leadingImage)
                        
                    }
                }
                
                if type == .toggle {
                    
                    Toggle(isOn: $toggle) {
                        M7Text(text, style: .subtitle1)
                    }
                    
                } else if type == .radio {
                    
                    
                    
                    
                    M7Text(text, style: .subtitle1)
                    
                    Spacer()
                    
                    
                    if toggle {
                        
                        ZStack {
                            Circle().fill(M7Colors.primary).frame(width: 24, height: 24)
                                .cornerRadius(12)
                            
                            Circle().fill(Color.white).frame(width: 8, height: 8)
                                .cornerRadius(4)
                            
                        }
                        
                        
                    } else {
                        
                        Circle().stroke(M7Colors.onSurface.disabled, lineWidth: 4).frame(width: 24, height: 24).cornerRadius(12)
                        
                    }
                    
                    
                    
                    
                    
                } else {
                    
                    M7Text(text, style: .subtitle1)
                    
                    Spacer()
                }
                
            }
            
            
            
            
            
        }//.padding(.vertical, 20.0)
            .frame(minHeight: 70)
        
        
        
    }
    
    func createToggle() {
        
    }
}

struct M7ListRow_Previews: PreviewProvider {
    static var previews: some View {
        M7Row("Text", leadingImage: "book-open")
    }
}




/*
 
 public struct M7Row: View {
 public var text: String
 public var type: M7RowAccessoryType
 public var leadingImage: String
 @Binding var toggle: Bool
 
 public init(_ text: String,
 type: M7RowAccessoryType = .none,
 leadingImage: String = "",
 toggle: Binding<Bool> = .constant(false)
 ) {
 self.text = text
 self.type = type
 self.leadingImage = leadingImage
 self._toggle = toggle
 }
 
 public var body: some View {
 
 
 VStack(alignment: .leading) {
 
 
 if toggle {
 
 M7Surface(elevation: .z2, background: .secondary, padding: .m, content: {
 HStack() {
 
 if leadingImage != "" {
 
 M7Surface(background: .secondary, padding: .xxs) {
 
 Image(leadingImage)
 
 }
 }
 
 if type == .toggle {
 
 Toggle(isOn: $toggle) {
 M7Text(text, style: .subtitle1)
 }
 
 //                } else if type == .button {
 //
 //                    M7Text(text, style: .subtitle1)
 //
 //                    Spacer()
 //
 //                    M7Button(action: {}) {
 //                        M7Text("Button")
 //                    }
 
 } else {
 
 M7Text(text, style: .subtitle1)
 
 Spacer()
 }
 
 }
 })
 
 } else {
 
 HStack() {
 
 if leadingImage != "" {
 
 M7Surface(background: .secondary, padding: .xxs) {
 
 Image(leadingImage)
 
 }
 }
 
 if type == .toggle {
 
 Toggle(isOn: $toggle) {
 M7Text(text, style: .subtitle1)
 }
 
 //                } else if type == .button {
 //
 //                    M7Text(text, style: .subtitle1)
 //
 //                    Spacer()
 //
 //                    M7Button(action: {}) {
 //                        M7Text("Button")
 //                    }
 
 } else {
 
 M7Text(text, style: .subtitle1)
 
 Spacer()
 }
 
 }
 
 }
 
 
 
 }//.padding(.vertical, 20.0)
 .frame(minHeight: 70)
 
 
 
 }
 }
 
 struct M7ListRow_Previews: PreviewProvider {
 static var previews: some View {
 M7Row("Text", leadingImage: "book-open")
 }
 }
 */


import SwiftUI

public enum M7RowAccessoryType {
    case none
    case disclosureIndicator
    case detailButton
    case checkmarkSelect
    case checkmarkUnselect
    case radioSelect
    case radioUnselect
    case toggle
}


public struct M7Row: View {
    
    public var text: String
    public var type: M7RowAccessoryType
    public var leadingImage: String
    
    public init(_ text: String, type: M7RowAccessoryType = .none, leadingImage: String = "") {
        self.text = text
        self.type = type
        self.leadingImage = leadingImage
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            
            HStack() {
                
               
                
                if leadingImage != "" {
                    
                    M7Surface(background: .secondary, padding: .xxs) {
                        
                        Image(leadingImage)
                        
                    }
                    
                }
                
                M7Text(text, style: .subtitle1)
                
                Spacer()
                
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

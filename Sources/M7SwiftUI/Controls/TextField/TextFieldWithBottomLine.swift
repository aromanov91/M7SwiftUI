//
//  File.swift
//  
//
//  Created by Alexander Romanov on 09.06.2020.
//

import SwiftUI

public struct TextFieldWithBottomLine: View {
    
    @State var text: String = ""
    private var placeholder = ""
    private let lineThickness = CGFloat(2.0)

    public init(placeholder: String) {
        self.placeholder = placeholder
    }

    public var body: some View {
        VStack {
         TextField(placeholder, text: $text)
             HorizontalLine(color: .black)
        }.padding(.bottom, lineThickness)
    }
}


struct HorizontalLineShape: Shape {

    func path(in rect: CGRect) -> Path {

        let fill = CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height)
        var path = Path()
        path.addRoundedRect(in: fill, cornerSize: CGSize(width: 2, height: 2))

        return path
    }
}

struct HorizontalLine: View {
    private var color: Color? = nil
    private var height: CGFloat = 1.0

    init(color: Color, height: CGFloat = 1.0) {
        self.color = color
        self.height = height
    }

    var body: some View {
        HorizontalLineShape().fill(self.color!).frame(minWidth: 0, maxWidth: .infinity, minHeight: height, maxHeight: height)
    }
}

struct HorizontalLine_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalLine(color: .black)
    }
}

struct TextFieldWithBottomLine_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithBottomLine(placeholder: "My placeholder")
    }
}

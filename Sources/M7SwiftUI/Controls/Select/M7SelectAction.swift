//
//  File.swift
//  
//
//  Created by 18391981 on 18.06.2020.
//

import SwiftUI

public struct M7SelectAction: View {
    
    @Binding public var  selected: String
    @State var showModal = false
    public var selectionRows: [String]
    var buttonsArray: NSMutableArray = NSMutableArray()
    
    
    public init(_ selectionRows: [String] = [""], selected: Binding<String> = .constant("")) {
        self.selectionRows = selectionRows
        self._selected = selected
        loadArray()
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
            .actionSheet(isPresented: $showModal) {
                ActionSheet(title: Text("Change background"),
                            message: Text("Select a new color"),
                            buttons:
                    self.buttonsArray as! [ActionSheet.Button]
                
                )
                
                
            }
        }
    }
    
    func loadArray() {
        for i in 0 ..< self.selectionRows.count {
            let button: ActionSheet.Button =
            
                .default(Text(self.selectionRows[i]), action: {
                    self.selected = self.selectionRows[i]
            })
            
            self.buttonsArray[i] = button
            
        }
        
        self.buttonsArray.insert(ActionSheet.Button.cancel(), at: 0)
    }
}

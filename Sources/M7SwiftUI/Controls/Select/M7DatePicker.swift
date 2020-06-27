//
//  File.swift
//  
//
//  Created by 18391981 on 21.06.2020.
//

import SwiftUI
import Combine

public struct M7DatePicker: View {
    
    
    @Binding public var date: Date
    @State var showModal = false
  
    
    public init(date: Binding<Date>) {
        
        self._date = date
    }
    
    public var body: some View {
        
        ZStack {
            
            Button(action: {
                self.showModal.toggle()
               
            }) {
                M7Text("\(date)")
//                    .onAppear {
//                    date
//                }
                Spacer()
                Image("calendar")
                    
            }.frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .frame(height: 52)
            .background(M7Colors.surface.secondary)
            .cornerRadius(M7Radius.m)
            .foregroundColor(M7Colors.onSurface.highEmphasis)

            .sheet(isPresented: $showModal) {
                DateModalSelect(showModal: self.$showModal, date: self.$date)
            }
            
        }
    }
    
}


public struct DateModalSelect: View {
    
    @Binding var showModal : Bool
    
    

    @Binding var date: Date
    

    public var body: some View {
        
        NavigationView {
            
     
            
            DatePicker("", selection: $date, in: ...Date(), displayedComponents: .date).labelsHidden()
            
       
            
            Spacer()
            }.navigationBarTitle("Select")
        }
    
}

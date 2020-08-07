//
//  SegmentedControlView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct SegmentedControlView : View {
    
    @Binding var selected : Int
    
    var body : some View {
        
        HStack {
            
            Button(action: {
                
                self.selected = 0
                
            }) {
                VStack {
                    Text("Popular")
                        .padding(.horizontal, 5)
                        .padding(.vertical, 0)
                        .font(.body)
                    Image( self.selected == 0 ? "lineSelected" : "")
                        .frame(width: 60, height: 10)
                }
            }
            .foregroundColor(self.selected == 0 ? .black : .gray)
            
            Button(action: {
                
                self.selected = 1
                
            }) {
                VStack {
                     Text("New")
                         .padding(.horizontal, 5)
                         .padding(.vertical, 0)
                         .font(.body)
                    Image( self.selected == 1 ? "lineSelected" : "")
                        .frame(width: 60, height: 10)
                }
            }
            .foregroundColor(self.selected == 1 ? .black : .gray)
            
            Button(action: {
                         
                         self.selected = 2
                         
                     }) {
                         VStack {
                              Text("Follow")
                                  .padding(.horizontal, 5)
                                  .padding(.vertical, 0)
                                  .font(.body)
                             Image( self.selected == 2 ? "lineSelected" : "")
                                 .frame(width: 60, height: 10)
                         }
                     }
                     .foregroundColor(self.selected == 2 ? .black : .gray)
                     
            }.padding(8)
            .clipShape(Capsule())
            .animation(.default)
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(selected: .constant(0))
    }
}

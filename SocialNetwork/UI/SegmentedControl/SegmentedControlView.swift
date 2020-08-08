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
    var options: [String]
    
    var body : some View {
        
        HStack {
            
            Button(action: {
                
                self.selected = 0
                
            }) {
                VStack {
                    Text(options[0])
                        .padding(.horizontal, 5)
                        .padding(.vertical, 0)
                        .font(.custom("HelveticaNeue-Medium", size: 16))
                    
                }
            }
            .foregroundColor(self.selected == 0 ? .black : .gray)
            
            Button(action: {
                
                self.selected = 1
                
            }) {
                VStack {
                     Text(options[1])
                         .padding(.horizontal, 5)
                         .padding(.vertical, 0)
                         .font(.custom("HelveticaNeue-Medium", size: 16))
                }
            }
            .foregroundColor(self.selected == 1 ? .black : .gray)
            
            Button(action: {
                         
                         self.selected = 2
                         
                     }) {
                         VStack {
                              Text(options[2])
                                  .padding(.horizontal, 5)
                                  .padding(.vertical, 0)
                                  .font(.custom("HelveticaNeue-Medium", size: 16))
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
        SegmentedControlView(selected: .constant(0), options: ["Popular", "New", "Follow"])
    }
}

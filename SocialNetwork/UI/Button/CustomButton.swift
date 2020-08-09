//
//  CustomButton.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 9/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct CustomButton: View {

@State private var didTap:Bool = false

  var body: some View {
    Button(action: {
        self.didTap = true
    }) {
        Image(didTap ? "Heart_Liked" : "Heart").foregroundColor(didTap ? Color("PinkColor") : Color("DarkGrayColor"))
    }
  }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}

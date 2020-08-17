//
//  SegmentedControlView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct Option: Identifiable {
    var id: Int
    var option: String
}

struct SegmentedControlView: View {
    @Binding var selected : Int
    var options: [Option]

    var body: some View {
        HStack {
            ForEach(options) { option in
                Button(action: {
                    self.selected = option.id
                })
                {
                    VStack {
                        Text(option.option)
                            .padding(.horizontal, 5)
                            .padding(.vertical, 0)
                            .font(.custom("HelveticaNeue-Medium", size: 16))
                    }
                }.foregroundColor(self.selected == option.id ? .black : .gray)
            }
        }.padding(20)
        .clipShape(Capsule())
        .animation(.default)
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(selected: .constant(0), options: [Option(id: 0, option: "Popular"), Option(id: 1, option: "New"), Option(id: 2, option: "Follow")])
    }
}

//
//  PostDetail.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct PostDetail : View {
    var userName: String
    var imageName: String
    var likes: Int
    var description: String
    var views: Int
    var downloads: Int
    var body: some View {
        
        VStack(spacing: 15.0) {
            Image(imageName)
            Text(userName)
                .font(.body)

            Text(String(likes))
                .font(.body)
            Divider()
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .lineLimit(50)
        }.padding().navigationBarTitle(Text(userName), displayMode: .inline)
    }
}

struct PostDetail_Previews : PreviewProvider {
    static var previews: some View {
        PostDetail(userName: "@RosieDel", imageName: "photo",  likes: 100, description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
            views: 1000,
            downloads : 20)
    }
}

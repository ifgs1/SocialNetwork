//
//  PostCell.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct PostCell : View {
    let post: Post
    var body: some View {
        return NavigationLink(destination: PostDetail(name: post.name, userName: post.userName, imageName: post.imageName, likes: post.likes, description: post.description, views: post.views, downloads: post.downloads)) {
            
            VStack(alignment: .leading) {
                Image(post.imageName)
                    .resizable()
                    .scaledToFit()
                HStack {
                    Text(post.userName)
                        .font(.custom("HelveticaNeue-Bold", size: 14))
                    Spacer()
                    HStack {
                        Text(String("\(post.likes) likes"))
                        .font(.custom("HelveticaNeue-Light", size: 14))
                        .foregroundColor(Color("LightGrayColor"))
                    Image(systemName: "heart")
                    }
                }
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        PostCell(post:  Post(name: "Alex Nolan", userName: "@RosieDel", imageName: "photo", likes: 120, description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
            views: 1000,
            downloads : 20))
        }
    }

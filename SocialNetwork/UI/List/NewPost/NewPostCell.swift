//
//  NewPostCell.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 9/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct NewPostCell: View {
    let post: Post
    var body: some View {
        VStack(spacing: 15.0) {
            HStack {
                Image(post.profileImageName)
                VStack {
                    Text(post.name)
                        .font(.custom("HelveticaNeue-Bold", size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(String("\(post.time)min ago"))
                        .font(.custom("HelveticaNeue-Regular", size: 12))
                        .foregroundColor(Color("LightGrayColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                Image("ic_down")
            }.frame(maxWidth: .infinity, alignment: .leading)
            Image(post.imageName)
                .resizable()
                .scaledToFit()
            HStack(spacing: 22.0) {
                Image("HeartBig")
                Image("Actions")
                Image("destinationicon")
            }.frame(maxWidth: .infinity, alignment: .leading)
            Divider()
            VStack (spacing: 10.0) {
                HStack {
                    Text("Jennie Dean ")
                        .font(.custom("HelveticaNeue-Bold", size: 14))
                    Spacer()
                    CustomButton()
                    Text(String("\(post.likes) Likes"))
                        .font(.custom("HelveticaNeue-Regular", size: 14))
                        .foregroundColor(Color("DarkGrayColor"))
                }.frame(maxWidth: .infinity, alignment: .leading)
                Text(post.description)
                    .font(.custom("HelveticaNeue-Regular", size: 14))
                    .foregroundColor(Color("LightGrayColor"))
                HStack {
                    Image("ic_downLight")
                    Text(String("See \(post.comments) comments"))
                        .font(.custom("HelveticaNeue-Regular", size: 12))
                        .foregroundColor(Color("LightGrayColor"))
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxWidth: .infinity, alignment: .leading)
        }.padding()
    }
}

struct NewPostCell_Previews: PreviewProvider {
    static var previews: some View {
        NewPostCell(post: Post(name: "Alex Nolan", userName: "@RosieDel", imageName: "photo", likes: 120, description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
        views: 1000,
        downloads : 20,
        profileImageName: "NewPostProfile",
        comments: 100,
        time:15))
    }
}

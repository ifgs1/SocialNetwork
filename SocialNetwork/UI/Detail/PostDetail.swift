//
//  PostDetail.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct PostDetail : View {
    var name: String
    var userName: String
    var imageName: String
    var likes: Int
    var description: String
    var views: Int
    var downloads: Int
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {

        VStack(spacing: 15.0) {
            Text(userName)
                .font(.custom("HelveticaNeue-Medium", size: 16))
                .foregroundColor(.black)
            Image(imageName)
                .resizable()
                .scaledToFit()
            HStack {
                Text(name)
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                               
                               
                }) {
                    VStack {
                        CustomButton()
                    }
                }
            }

            VStack(spacing: 15.0) {
                
            Text(String("\(likes) Likes - \(views) Views - \(downloads) Downloads")).font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("HelveticaNeue-Light", size: 14))
                .foregroundColor(Color("LightGrayColor"))

            Text(description)
                .font(.custom("HelveticaNeue-Light", size: 14))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color(.black))
            }
            Spacer()

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left").foregroundColor(.gray)
        }, trailing: Button(action : {

        }){
            Image("Menu").foregroundColor(.gray)
        })
    }
}

struct PostDetail_Previews : PreviewProvider {
    static var previews: some View {
        PostDetail(name: "Alexander Nolan", userName: "@RosieDel", imageName: "photo",  likes: 100, description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
            views: 1000,
            downloads : 20)
    }
}

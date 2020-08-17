//
//  PostTableView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct PostTableView: View {
    @State var selected = 0

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                SegmentedControlView(selected: self.$selected, segments: [Segment(id: 0, segmentName: "Popular"), Segment(id: 1, segmentName: "New"), Segment(id: 2, segmentName: "Follow")])
                    .frame(maxWidth: .infinity, alignment: .leading)
                    if self.selected == 0 {
                        PostList()
                    } else if self.selected == 1 {
                        NewPostTableView()
                    } else {
                        PostList()
                    }
            }.background(Color(.white).edgesIgnoringSafeArea(.all))
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct PostList : View {
    var posts: [Post] = mockedPosts
    @State var selected = 0

    var body: some View {
        List {
            ForEach(posts) { post in
                ZStack {
                    PostCell(post: post)
                    NavigationLink(destination: PostDetail(name: post.name, userName: post.userName, imageName: post.imageName, likes: post.likes, description: post.description, views: post.views, downloads: post.downloads)) {
                            EmptyView()
                        }.buttonStyle(PlainButtonStyle())
                }
            }
        }.onAppear {
         UITableView.appearance().separatorStyle = .none
        }
    }
}

struct PostTableVieww_Previews: PreviewProvider {
    static var previews: some View {
        PostTableView()
    }
}

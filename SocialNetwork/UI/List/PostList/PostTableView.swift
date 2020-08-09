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
                SegmentedControlView(selected: self.$selected, options: ["Popular", "New", "Follow"])
                    .frame(maxWidth: .infinity, alignment: .leading)
                    if self.selected == 0 {
                        PostList()
                    } else if self.selected == 1 {
                        PostList()
                    } else {
                    
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
                PostCell(post: post)
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

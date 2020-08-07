//
//  Post.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct Post: Identifiable, Codable {
    var id = UUID()
    var userName: String
    var imageName: String
    var likes: Int
    var description: String
    var views: Int
    var downloads: Int
}

let mockedPosts = [ Post(userName: "@RosieDel", imageName: "photo", likes: 120, description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
                    views: 1000,
                    downloads : 20)]

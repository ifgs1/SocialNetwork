//
//  ProfileView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 8/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var selected = 0
    let data: [DataModel] = [
    .init(id: "0", imageName: "Collection"),
    .init(id: "1", imageName: "Collection2"),
    .init(id: "2", imageName: "Collection"),
    .init(id: "3", imageName: "Collection2")
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15.0) {
                Text("@ifgs1")
                    .font(.custom("HelveticaNeue-Medium", size: 16.0))
                Image("ProfilePicture")
                Text("Ivan Garcia")
                    .font(.custom("HelveticaNeue-Medium", size: 20.0))
                Text("Photography lover from 8 years ")
                    .font(.custom("HelveticaNeue-Regular", size: 14.0))
                    .foregroundColor(Color("LightGrayColor"))
                
                SegmentedControlView(selected: self.$selected, segments: [Segment(id: 0, segmentName: "Photos"), Segment(id: 1, segmentName: "Likes"), Segment(id: 2, segmentName: "Marks")])
                List {
                    ForEach(data) { items in
                            CollectionView(data: items)
                    }
                }.onAppear {
                 UITableView.appearance().separatorStyle = .none
                }
            }
        }.background(Color(.white).edgesIgnoringSafeArea(.all))
        .navigationBarTitle("")
        .navigationBarItems(trailing: Button(action : {

        }){
            Image("Menu").foregroundColor(.gray)
        })
    }
}

struct DataModel: Identifiable {
    let id: String
    let imageName: String
}

struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<2) { items in
                    Spacer()
                        Image(self.data.imageName)
                    Spacer()
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

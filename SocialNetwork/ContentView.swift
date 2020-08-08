//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        VStack{
            PostTableView()
            // Your View.....
            Spacer()
            TabBarView()
            
        }.background(Color(.white).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

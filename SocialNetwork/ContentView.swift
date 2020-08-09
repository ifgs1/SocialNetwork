//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 7/08/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var optionSelected = 0

    var body: some View {
        
        VStack {
            if self.optionSelected == 0 {
                PostTableView()
            } else {
                ProfileView()
            }
            // Your View.....
            Spacer()
            TabBarView(optionSelected: self.$optionSelected)
            
        }.background(Color(.white).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

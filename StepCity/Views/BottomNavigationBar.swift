//
//  BottomNavigationBar.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/8/20.
//

import SwiftUI

struct BottomNavigationBar: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.clear
    }

    var body: some View {
        TabView() {
            Text("My City")
                .tabItem {
                    Image("mycity_logo")
                }
            Text("Build Page")
                .tabItem {
                    Image(systemName: "hammer")
                }
            Leaderboard()
                .tabItem {
                    Image(systemName: "person.2")
                }
            UserProfile()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}

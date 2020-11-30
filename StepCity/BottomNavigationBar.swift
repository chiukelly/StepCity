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
                    Image(systemName: "building.2")
                    Text("My City")
                }
            Text("Build Page")
                .tabItem {
                    Image(systemName: "hammer")
                    Text("Build")
                }
            Leaderboard()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Friends")
                }
            UserProfile()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}

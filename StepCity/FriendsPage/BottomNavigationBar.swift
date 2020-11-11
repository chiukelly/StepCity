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
            Text("My City Page Placeholder")
                .multilineTextAlignment(.leading)
                .tabItem {
                    Image("mycity_logo")
                }
            Text("Build Page Placeholder")
                .tabItem {
                    Image("build_logo")
                }
            Text("Friends Page Placeholder")
                .tabItem {
                    Image("friends_logo")
                }
            Text("Settings Page Placeholder")
                .tabItem {
                    Image("setting_logo")
                }
        }
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}

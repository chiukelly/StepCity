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
            Text("")
                .multilineTextAlignment(.leading)
                .tabItem {
                    Image("mycity_logo")
                }
            Text("asdf")
                .tabItem {
                    Image("build_logo")
                }
            Text("sadf")
                .tabItem {
                    Image("friends_logo")
                }
            Text("safd")
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

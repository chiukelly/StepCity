//
//  StepCityApp.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/7/20.
//

import SwiftUI
import Firebase

@main
struct StepCityApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MyCityView()
        }
    }
}

struct StepCityApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

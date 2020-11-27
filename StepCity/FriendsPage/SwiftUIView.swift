//
//  SwiftUIView.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/14/20.
//

import SwiftUI

class User: ObservableObject {
    @Published var score = 0
}

struct ChangeView: View {
    @EnvironmentObject var user: User

    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}

struct SwiftUIView: View {
    //@ObservedObject var user = User()

//   var body: some View {
//       NavigationView {
//           VStack(spacing: 30) {
//               Text("Score: \(user.score)")
//               NavigationLink(destination: FriendsList()) {
//                   Text("Show Detail View")
//               }
//           }
//           .navigationBarTitle("Navigation")
//       }
//       .environmentObject(user)
//   }
    
    var body: some View {
        NavigationView {
            GeometryReader { gr in
                HStack(spacing: 0.0) {
                    NavigationLink(destination: FriendsList()) {
                        ZStack {
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                            
                            Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                            
                            Text("Leaderboard").font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                    }
                    
                    NavigationLink(destination: AddFriends()) {
                        ZStack {
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                            
                            Text("Add Friends")
                                .font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                        }
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

//
//  AddFriends.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/24/20.
//

import SwiftUI

struct AddFriends: View {
    var body: some View {
        NavigationView {
            GeometryReader { gr in
                VStack(spacing: 0.0){
                    // Friends Header
                    Text("Friends")
                        .font(Font.custom("Roboto-Light", size: gr.size.height * 0.05))
                        .padding(.leading)
                        .frame(width: gr.size.width, height: gr.size.height * 0.08, alignment: .leading)

                    // Leaderboard & Add Friends Options
                    HStack(spacing: 0.0) {
                            ZStack {
                                Rectangle()
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                                Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)

                                Text("Leaderboard")
                                    .font(.custom("Roboto-Light", size: gr.size.height * 0.020))
                            }
                            
                            ZStack {
                                Rectangle()
                                .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                                Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                
                                Text("Add Friends").font(.custom("Roboto-Light", size: gr.size.height * 0.020))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                    } .frame(height: gr.size.height * 0.05)
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct AddFriends_Previews: PreviewProvider {
    static var previews: some View {
        AddFriends()
    }
}

//
//  FriendsList.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/11/20.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        VStack{
            //Friends
            Text("Friends")
                //.font(.custom("Roboto", size: 30, relativeTo: <#T##Font.TextStyle#>))
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            HStack {
                //Rectangle 6
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                }
                .frame(width: 191.3, height: 27)
                
                //Rectangle 7
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                }
                .frame(width: 191.3, height: 27)
            }
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}

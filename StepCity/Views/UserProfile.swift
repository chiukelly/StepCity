//
//  UserProfile.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/29/20.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        
        GeometryReader { gr in
            VStack{
                Circle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: gr.size.height * 0.2, height: gr.size.height * 0.2)
                    .padding(.top)
                
                Text("@myusername")
                    .font(.custom("Roboto Light", size: gr.size.height * 0.037))
                
                // Edit Profile Button
                Button(action: {} ) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                            .frame(width: gr.size.width * 0.55, height: gr.size.height * 0.06)
                        
                        Text("edit profile info")
                            .font(.custom("Roboto Light", size: gr.size.height * 0.02))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                }
                
                Divider()
                    .padding([.top, .leading, .trailing])
                
                dataTemplate("Date Joined", "March 29, 2020")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                dataTemplate("Lifetime Record", "1,282,429 Steps")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                dataTemplate("All-Time Weekly High", "12,420 Steps")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                dataTemplate("Weekly High Score", "2420 Steps")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                dataTemplate("Tracker", "Apple Health")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                dataTemplate("Profile Type", "Private")
                    .frame(width: gr.size.width, height: gr.size.height * 0.08)
                
                //TODO: add bottom divider across the screen
                
            }
        }
    }
    
    func dataTemplate(_ data: String, _ result: String) -> some View {
        return
            GeometryReader { gr in
                VStack(alignment: .trailing) {
                    HStack {
                        Text(data)
                            .font(.custom("Roboto Light", size: gr.size.height * 0.2))
                            .frame(width: gr.size.width * 0.3, alignment: .leading)
                        
                        Text(result)
                            .font(.custom("Roboto Light", size: gr.size.height * 0.2))
                            .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 1)))
                            .frame(alignment: .leading)
                            .offset(x: gr.size.width * 0.1)

                        Spacer()
                    }
                    
                    Divider()
                        .frame(width: gr.size.width * 0.5)
                        .offset(y: gr.size.height * 0.38)
                }
                .padding(.horizontal, 40.0)
                .frame(width: gr.size.width, height: gr.size.height)
            }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

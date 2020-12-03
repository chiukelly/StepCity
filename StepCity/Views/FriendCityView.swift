//
//  FriendCityView.swift
//  StepCity
//
//  Created by Kelly Chiu on 12/3/20.
//

import SwiftUI

struct FriendCityView: View {
    @State private var empty = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { gr in
            ZStack{
                VStack{
                    HStack {
                        // my city
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6000000238418579)))

                            RoundedRectangle(cornerRadius: 27)
                            .strokeBorder(Color(#colorLiteral(red: 0.37254905700683594, green: 0.42353007197380066, blue: 0.8901960849761963, alpha: 0.4000000059604645)), lineWidth: 1)
                            
                            //enter password
                            Text("@emmanuel's city").font(.custom("Roboto Light", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 1))).multilineTextAlignment(.center)
                        }
                        .frame(width: gr.size.width * 0.4, height: gr.size.height * 0.048)
                        
                        Button(action: {}) {
                            Image(systemName: "questionmark.circle")
                                .foregroundColor(Color(hex: "#CACDF5"))
                        }
                    } .frame(width: gr.size.width, alignment: .center)
                    
                    
                    Spacer()
                    
                    // city playform
                    Image("my_city_platform")
                        .resizable()
                        .shadow(color: Color(hex: "#2B3AD7"), radius: 15, x: 0, y: 4)
                        .opacity(0.31)
                        .frame(height: gr.size.height * 0.6)
                }
                .padding(.vertical, 50.0)
                
                if !empty {
                    Image("friend_building")
                        .resizable()
//                        .frame(width: gr.size.width, height: gr.size.height)
//                        .offset(x: 13, y: gr.size.height * 0.18)
                }
            }
        }
    }
}

struct FriendCityView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCityView()
    }
}

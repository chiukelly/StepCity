//
//  FriendsList.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/11/20.
//

import SwiftUI

struct FriendsList: View {
    @Environment(\.presentationMode) var presentationMode:
        Binding<PresentationMode>
    // self.presentationMode.wrappedValue.dismiss()
    
    var body: some View {
        let numbers = [1, 2, 3, 4, 5, 6, 7]
        
            NavigationView {
                GeometryReader { gr in
                    VStack(spacing: 20.0) {
                        buttons()
                            .frame(height: gr.size.height * 0.12)
                            
                        VStack(spacing: 20.0) {
                            ForEach(numbers, id:\.self) { number in
                                friendTemplate(number)
                                    .padding(.horizontal)
                                    .frame(width: gr.size.width, height: gr.size.height * 0.1)
                            }
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            
        
    }
    
    fileprivate func buttons() -> some View {
        return
            GeometryReader { gr in
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("Friends")
                        .font(Font.custom("Roboto-Light", size: gr.size.height * 0.45))
                        .padding(.leading)
                    
                    HStack(spacing: 0.0) {
                        Button(action: {
                            print("Leaderboard Tapped")
                            }) {
                            ZStack {
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                                
                                Rectangle()
                                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                
                                Text("Leaderboard").font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                        }
                        
                        Button(action: {
                            print("Add Friends Tapped")
                        }) {
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
    
    fileprivate func friendTemplate(_ number: Int) -> some View {
        return
            GeometryReader { gr in
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color(#colorLiteral(red: 0.08805567026138306, green: 0.16572041809558868, blue: 0.9786110520362854, alpha: 0.4000000059604645)), lineWidth: 1)
                    
                    HStack(spacing: 5.0) {
                        Text("\(number)")
                            .font(.custom("Roboto-Light", size: gr.size.height * 0.6))
                            .frame(width: gr.size.width * 0.15)
                            .multilineTextAlignment(.center)
                        
                        Divider()
                            .offset(x: -(gr.size.width * 0.018), y: 0)
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                            .frame(width: gr.size.height * 0.5, height: gr.size.height * 0.5)
                        
                        Text("@userfriend")
                            .font(.custom("Roboto-Light", size: gr.size.height * 0.35))
                        
                        Text("25,000 steps")
                            .font(.custom("RobotoMono-Regular", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 0.6)))
                            //.frame(width: 100.0, height: 150.0)
                            .offset(x: gr.size.height * 0.15, y: gr.size.height * 0.3)
                        
                        Spacer()
                    }
                }
            }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}

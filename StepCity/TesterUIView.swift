//
//  TesterUIView.swift
//  StepCity
//
//  Created by Kelly Chiu on 12/3/20.
//

import SwiftUI

struct TesterUIView: View {
    var body: some View {
                GeometryReader { gr in
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Friends")
                            .font(Font.custom("Roboto-Light", size: gr.size.height * 0.045))
                            .padding(.leading)
                        
                        HStack(spacing: 0.0) {
                            // Return back to leaderboard page
                            Button(action: {}, label: {
                                ZStack {
                                    Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                                    Rectangle()
                                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)

                                    Text("Leaderboard")
                                        .font(.custom("Roboto-Light", size: gr.size.height * 0.018))
                                }
                            })
                            
                            Button(action: {}, label: {
                                ZStack {
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    
                                    Rectangle()
                                        .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                    
                                    HStack {
                                        Text("Add Friends").font(.custom("Roboto-Light", size: gr.size.height * 0.018))
                                            .foregroundColor(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                                        ZStack {
                                            Circle()
                                                .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                                                .frame(width: gr.size.width * 0.06)
                                            
                                            Text("1").font(.custom("Roboto-Light", size: gr.size.height * 0.018))
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        }.offset(x: 30)

                                    }
                                    
                                }
                            })
                        }
                    }
                    .frame(height: gr.size.height * 0.10)
                }
        }
    
}

struct TesterUIView_Previews: PreviewProvider {
    static var previews: some View {
        TesterUIView()
    }
}

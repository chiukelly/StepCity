//
//  BuildView.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 12/1/20.
//

import SwiftUI
import UIKit

struct BuildView: View {
    @State private var stepGoal = 10000;
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                
                // Step Goal Setter
                ZStack {
                    RoundedRectangle(cornerRadius: 27)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    RoundedRectangle(cornerRadius: 27)
                    .strokeBorder(Color(#colorLiteral(red: 0.7490196228027344, green: 0.7686274647712708, blue: 0.95686274766922, alpha: 1)), style: StrokeStyle(lineWidth: 1))
                    
                    HStack(spacing: 0.0) {
                        VStack(spacing: 0){
                            Text(String(stepGoal))
                                .font(.custom("Roboto Light", size: gr.size.height * 0.09))
                                .foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.42, blue: 0.89, alpha: 1)))
                                .frame(height: gr.size.height * 0.08)
                            
                            Text("steps")
                                .font(.custom("Roboto Mono Regular", size: gr.size.height * 0.019))
                                .foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.42, blue: 0.89, alpha: 1)))
                                .frame(height: gr.size.height * 0.03)
                        }
                        .frame(width: gr.size.width * 0.57)
                        
                        
                        Rectangle()
                            .frame(width: gr.size.width * 0.003)
                            .foregroundColor(Color(hex: "#BFC4F4"))
                        
                        VStack(spacing: 8.0){
                            Button(action: { self.stepGoal += 500 }) {
                                Image(systemName: "arrowtriangle.up.fill")
                                    .font(.system(size: gr.size.height * 0.05))
                                    .foregroundColor(Color("mainColor"))
                            }
                            
                            Rectangle()
                                .frame(height: gr.size.height * 0.001)
                                .foregroundColor(Color(hex: "#BFC4F4"))
                            
                            Button(action: { self.stepGoal -= 500 }) {
                                Image(systemName: "arrowtriangle.down")
                                    .font(.system(size: gr.size.height * 0.05, weight: .thin))
                                    .foregroundColor(Color("mainColor"))
                            }
                        }
                    }
                }.padding(.bottom)
                    .frame(height: gr.size.height * 0.15)
                    .padding(.horizontal, 40.0)

                // Building and platform
                ZStack {
                    Image("lightGrayPlatform")
                    
                    Image("darkGrayPlatform")
                        .offset(y: -(gr.size.height * 0.015))
                    
                    Image("building1")
                        //.frame(width: gr.size.width, height: 0) // reduce 'space' building takes
                        .offset(y: -(gr.size.height * 0.25))
                }
                    .padding(.bottom, 30.0)
                    .offset(y: gr.size.height * 0.25)
                
                // Buttons
                HStack {
                    // edit building button
                    Button(action: {}) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.37254902720451355, green: 0.42352941632270813, blue: 0.8901960849761963, alpha: 1)))

                            RoundedRectangle(cornerRadius: 27)
                            .strokeBorder(Color(#colorLiteral(red: 0.6883333325386047, green: 0.7136112451553345, blue: 0.9449999928474426, alpha: 1)), lineWidth: 1)
                            
                            Text("edit building")
                                .font(.custom("Roboto Light", size: gr.size.height * 0.017))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                        //.frame(width: gr.size.width * 0.4, height: gr.size.height * 0.05)
                    }
                    
                    // start stepping button
                    Button(action: {}) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                                .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                            RoundedRectangle(cornerRadius: 27)
                            .strokeBorder(Color(#colorLiteral(red: 0.6883333325386047, green: 0.7136112451553345, blue: 0.9449999928474426, alpha: 1)), lineWidth: 1)
                            
                            // edit building
                            Text("start stepping")
                                .font(.custom("Roboto Light", size: gr.size.height * 0.017))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                        //.frame(width: 163, height: gr.size.height * 0.05)
                    }
                }
                    .frame(width: gr.size.width * 0.9, height: gr.size.height * 0.05)
                
            }
                .padding(.vertical, 40.0)
                .frame(width: gr.size.width, height: gr.size.height, alignment: .center)
        }
    }
}





struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}

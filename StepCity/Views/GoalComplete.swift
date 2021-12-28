//
//  GoalComplete.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 12/2/20.
//

import SwiftUI

struct GoalComplete: View {
    var body: some View {
        GeometryReader { gr in
            VStack(spacing: 10.0) {
                // steps left
                Text("0")
                    .font(.custom("Roboto Light", size: gr.size.height * 0.128))
                    .frame(height: gr.size.height * 0.12)
                
                //steps left
                Text("steps left")
                    .font(.custom("Roboto Light", size: gr.size.height * 0.032))
                
                //BUILD COMPLETED!
                Text("BUILD COMPLETED!")
                    .font(.custom("Roboto Light", size: gr.size.height * 0.048))
                    .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 1)))
                
                //Congratulations!
                Text("Congratulations! \nYou walked 21000 steps today.")
                    .font(.custom("Roboto Light", size: gr.size.height * 0.032))
                    .frame(height: gr.size.height * 0.08)
                    .multilineTextAlignment(.center)

                // Building
                Image("building1")
                
                // place building button
                Button(action: {}) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                        RoundedRectangle(cornerRadius: 27)
                        .strokeBorder(Color(#colorLiteral(red: 0.6883333325386047, green: 0.7136112451553345, blue: 0.9449999928474426, alpha: 1)), lineWidth: 1)
                        
                        // edit building
                        Text("Place Building")
                            .font(.custom("Roboto Light", size: gr.size.height * 0.017))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    //.frame(width: 163, height: gr.size.height * 0.05)
                }
                    .frame(width: gr.size.width * 0.5, height: gr.size.height * 0.05)
                
            }
                .padding(.vertical, 40.0)
                .frame(width: gr.size.width, height: gr.size.height)
        }
    }
}

struct GoalComplete_Previews: PreviewProvider {
    static var previews: some View {
        GoalComplete()
    }
}

//
//  MyCityView.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 12/2/20.
//

import SwiftUI

struct MyCityView: View {
    @State private var empty = false
    
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
                            Text("my city").font(.custom("Roboto Light", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 1))).multilineTextAlignment(.center)
                        }
                        .frame(width: gr.size.width * 0.4, height: gr.size.height * 0.048)
                        
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(Color(hex: "#CACDF5"))
                        
                    } .frame(width: gr.size.width, alignment: .center)
                    
                    
                    Spacer()
                    
                    // city playform
                    Image("my_city_platform")
                        .resizable()
                        .shadow(radius: 15)
                        .frame(height: gr.size.height * 0.6)
                }
                .padding(.vertical, 50.0)
                
                if !empty {
                    Image("building1")
                        .resizable()
                        .frame(width: gr.size.width * 0.3, height: gr.size.height * 0.4)
                        .offset(x: 13, y: gr.size.height * 0.18)
                }
            }
        }
    }
}

struct MyCityView_Previews: PreviewProvider {
    static var previews: some View {
        MyCityView()
    }
}

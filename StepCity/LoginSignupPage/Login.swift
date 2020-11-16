//
//  Login.swift
//  StepCity
//
//  Created by Kelly Chiu on 11/16/20.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct Login: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {

        GeometryReader { gr in
            VStack {
                // App name
                LinearGradient(gradient: Gradient(colors: [.black, Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1))]),
                           startPoint: .leading,
                           endPoint: .trailing)
                    .mask(Text("STEPCITY")).font(Font.custom("PixelOperator-Bold", size: gr.size.height * 0.10))
                    .frame(width: gr.size.width, height: gr.size.height * 0.30)
                
                TextField("email", text: $email).padding().background(lightGrayColor).cornerRadius(40.0).padding(.bottom, 20)
                padding()
                
                SecureField("password", text: $password).padding().background(lightGrayColor).cornerRadius(50.0).padding(.bottom, 20)
                padding()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

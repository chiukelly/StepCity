//
//  AuthView.swift
//  stepcity
//
//  Created by Kelly Chiu on 11/30/20.
//  Copyright © 2020 convergent health bt. All rights reserved.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
let darkBlueColor = Color(red: 43.0/255.0, green: 58.0/255.0, blue: 215.0/255.0)

struct SignInView : View {

    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""

    @EnvironmentObject var session: SessionStore

    func signIn () {
        session.signIn(email: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }

    var body: some View {
        GeometryReader { gr in
            VStack {
                VStack (spacing: 18.0){
                    // App name
                    LinearGradient(gradient: Gradient(colors: [.black, Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1))]),
                    startPoint: .leading,endPoint: .trailing)
                        .mask(Text("STEPCITY"))
                        .padding(.bottom)
                        .font(Font.custom("PixelOperator-Bold", size: gr.size.height * 0.10))
                        .frame(height: gr.size.height * 0.10)

                        CustomTextField(placeholder: Text("enter email"), text: $email)
                        CustomTextField(placeholder: Text("enter password"), text: $password)

                    // login button
                    Button(action: {}) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 27)
                            .fill(Color("mainColor"))

                            RoundedRectangle(cornerRadius: 27)
                            .strokeBorder(Color(#colorLiteral(red: 0.6883333325386047, green: 0.7136112451553345, blue: 0.9449999928474426, alpha: 1)), lineWidth: 1)
                            
                            Text("sign in")
                                .font(.custom("Roboto Light", size: gr.size.height * 0.025))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        } .frame(height: gr.size.height * 0.09)
                    }

                    if (error != "") {
                        Text(error)
                            .font(Font.custom("Roboto-Light", size: gr.size.height * 0.023))
                            .foregroundColor(.red)
                    }
                    
                    HStack {
                        Text("don't have an account?")
                            .font(Font.custom("Roboto-Light", size: gr.size.height * 0.023))
                            .foregroundColor(.black)
                        NavigationLink(destination: SignUpView()) {
                            Text("sign up")
                                .font(Font.custom("Roboto-Light", size: gr.size.height * 0.023))
                                .foregroundColor(Color("mainColor"))
                        }
                    }
                }
                    .padding(.horizontal, 30.0)
                
                VStack() {
                    Image("main_buildings")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .offset(x: -(gr.size.width * 0.1))
                }
                .frame(width: gr.size.width, height: gr.size.height * 0.5)
            }
        }
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color("mainColor"))
                    .offset(x: 20)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .padding(20)
                .cornerRadius(40.0)
                .overlay(RoundedRectangle(cornerRadius: 27)
                            .strokeBorder(Color(#colorLiteral(red: 0.37254905700683594, green: 0.42353007197380066, blue: 0.8901960849761963, alpha: 0.4000000059604645)), lineWidth: 1))
                .foregroundColor(Color("mainColor"))
        }
    }
}
    
struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var fullName: String = ""
    @State var username: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore

    func signUp () {
        session.signUp(email: email, password: password, fullName: fullName, username: username) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
                self.fullName = ""
                self.username = ""
            }
        }
    }
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                // create account text
                Text("CREATE ACCOUNT")
                    .font(Font.custom("PixelOperator-Bold", size: gr.size.height * 0.10))
                    .foregroundColor(.black)
                
                // email field
                TextField("enter email", text: $email)
                    .padding()
                    .background(lightGrayColor)
                    .cornerRadius(40.0)
                    .padding(.bottom, 20)
                    .frame(width: gr.size.width * 0.90)
                
                // full name field
                SecureField("enter full name", text: $password)
                    .padding()
                    .background(lightGrayColor)
                    .cornerRadius(50.0).padding(.bottom, 20)
                    .frame(width: gr.size.width * 0.90)
                
                // username field
                TextField("enter username", text: $password)
                    .padding()
                    .background(lightGrayColor)
                    .cornerRadius(50.0)
                    .padding(.bottom, 20)
                    .frame(width: gr.size.width * 0.90)
                
                // password field
                TextField("enter password", text: $password)
                    .padding()
                    .background(lightGrayColor)
                    .cornerRadius(50.0)
                    .padding(.bottom, 20)
                    .frame(width: gr.size.width * 0.90)
                
                // sign up button
                Button(action: signUp) {
                Text("sign up")
                    .font(Font.custom("Roboto-Light", size: gr.size.height * 0.023))
                    .frame(width: gr.size.width * 0.90, height: gr.size.height * 0.05)
                    .foregroundColor(.white).background(darkBlueColor).cornerRadius(50.0)
                }
                    
                if (error != "") {
                    Text(error)
                        .font(Font.custom("Roboto-Light", size: gr.size.height * 0.023))
                        .foregroundColor(.red)
                }
            }
        }
    }
}


struct AuthView: View {
    var body: some View {
        NavigationView {
            SignInView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AuthView().environmentObject(SessionStore())
            AuthView().environmentObject(SessionStore())
        }
    }
}


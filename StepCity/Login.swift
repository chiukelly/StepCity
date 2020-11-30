////
////  Login.swift
////  StepCity
////
////  Created by Kelly Chiu on 11/16/20.
////
//
//import SwiftUI
//
////let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
////let darkBlueColor = Color(red: 43.0/255.0, green: 58.0/255.0, blue: 215.0/255.0)
//
//struct Login: View {
//
//    @State var email = ""
//    @State var password = ""
//
//    @State var authenticationDidFail: Bool = false
//    @State var authenticationDidSucceed: Bool = true
//
//    var body: some View {
//
//        GeometryReader { gr in
//
//            ZStack {
//                VStack {
//                    // App name
//                    LinearGradient(gradient: Gradient(colors: [.black, Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1))]),
//                               startPoint: .leading,
//                               endPoint: .trailing)
//                        .mask(Text("STEPCITY")).font(Font.custom("PixelOperator-Bold", size: gr.size.height * 0.10))
//                        .frame(width: gr.size.width, height: gr.size.height * 0.30)
//
//                    EmailTextField(email: $email)
//
//                    PasswordSecureField(password: $password)
//    //                if authenticationDidFail {
//    //                    Text("Information not correct. Try again.").offset(y: -10).foregroundColor(.red)
//    //                }
//
//                    Button(action: {print("Button Tapped")}) {
//                        Text("sign up").font(Font.custom("Roboto-Light", size: gr.size.height * 0.023)).frame(width: gr.size.width * 0.90, height: gr.size.height * 0.05).foregroundColor(.white).background(darkBlueColor).cornerRadius(50.0)
//                    }
//                }
//                if authenticationDidSucceed {
//                    Text("login succeeded")
//                }
//
//            }
//        }
//    }
//}
//
//struct Login_Previews: PreviewProvider {
//    static var previews: some View {
//        Login()
//    }
//}
//
//struct EmailTextField: View {
//    @Binding var email: String
//
//    var body: some View {
//
//        GeometryReader { gr in
//        TextField("email", text: $email).padding().background(lightGrayColor).cornerRadius(40.0).padding(.bottom, 20).frame(width: gr.size.width * 0.90)
//        }
//    }
//}
//
//struct PasswordSecureField: View {
//    @Binding var password: String
//
//    var body: some View {
//
//        GeometryReader { gr in
//        SecureField("password", text: $password).padding().background(lightGrayColor).cornerRadius(50.0).padding(.bottom, 20).frame(width: gr.size.width * 0.90)
//        }
//    }
//}

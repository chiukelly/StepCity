//
//  FriendsList.swift
//  StepCity
//
//  Created by Emmanuel Ihim on 11/11/20.
//

import SwiftUI

struct Leaderboard: View {
    @Environment(\.presentationMode) var presentationMode
    
    // database leaderboard list 
//    @ObservedObject private var viewModel = LeaderboardUserViewModel()
    
    // use viewModel.leaderboardUserList
    
    var body: some View {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let names = ["Emmanuel Ihim", "Will Dang", "Anoushka Singhania", "Audrey Hsien", "Kelly Chiu", "Brinda Prasad", "Courtnie Stone", "Karim Hooda", "Priya Barve", "Yash Kakodkar"]
        let steps = [100000, 65500, 38000, 24500, 21000, 17500, 14000, 10500, 7000, 3500]
        let images = ["emmanuel", "will", "anoushka", "audrey", "kelly",  "brinda", "courtnie", "karim", "priya", "yash"]
        
        // Parent Navigation view to allow navigation to Add Friends Page
        NavigationView {
            GeometryReader { gr in
                // Leaderboard page parent VStack
                VStack(spacing: 20.0) {
                    header()
                        .frame(height: gr.size.height * 0.12)
                    
                    // List of friends ranked in based on most # of steps
                    // Currently static data
                    ScrollView() {
                        VStack(spacing: 20.0) {
                            ForEach(0..<10, id: \.self) { i in
                                friendTemplate(numbers[i], names[i], steps[i], images[i])
                                    .padding(.horizontal, 30.0)
                                    .frame(width: gr.size.width, height: gr.size.height * 0.09)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .onAppear() {
//                self.viewModel.fetchData()
            }
        }
    }
    
    // Friends title + Leaderboard button and Add Friends navigation link
    func header() -> some View {
        return
            GeometryReader { gr in
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("Friends")
                        .font(Font.custom("Roboto-Light", size: gr.size.height * 0.45))
                        .padding(.leading)
                    
                    HStack(spacing: 0.0) {
                        // Do nothing
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                                
                                Rectangle()
                                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                
                                Text("Leaderboard")
                                    .font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        
                        
                        NavigationLink(destination: AddFriends()) {
                            ZStack {
                                Rectangle()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                
                                Rectangle()
                                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                
                                HStack {
                                    Text("   Add Friends").font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                        .foregroundColor(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                                    ZStack {
                                        Circle()
                                            .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                                            .frame(width: gr.size.width * 0.06)

                                        Text("1").font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    }.offset(x: 30)

                                }
                                
                            }
                        }
                    }
                }
            }
    }
    
    // Design for friend block
    // Static data
    func friendTemplate(_ number: Int, _ name: String, _ step: Int, _ image: String) -> some View {
        return
            GeometryReader { gr in
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color(#colorLiteral(red: 0.08805567026138306, green: 0.16572041809558868, blue: 0.9786110520362854, alpha: 0.4000000059604645)), lineWidth: 1)

                    HStack(spacing: 5.0) {
                        Text(String(number))
                            .font(.custom("Roboto-Light", size: gr.size.height * 0.6))
                            .frame(width: gr.size.width * 0.15)
                            .multilineTextAlignment(.center)

                        // Divider
                        Rectangle()
                            .frame(width: gr.size.width * 0.003)
                            .foregroundColor(Color(hex: "#2B3AD7"))
                            .opacity(0.5)
                            .offset(x: -(gr.size.width * 0.018))

                        // image
                        Image(image)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: gr.size.height * 0.6, height: gr.size.height * 0.6)

                        // Go to friend's city
                        NavigationLink(destination: FriendCityView()) {
                            Text(name)
                                .font(.custom("Roboto-Light", size: gr.size.height * 0.25))
                                .foregroundColor(.black)
                        }

//                        Text("@userfriend")
//                            .font(.custom("Roboto-Light", size: gr.size.height * 0.25))
//
                        Spacer()
                    }

                    Text("\(step) steps")
                        .font(.custom("RobotoMono-Regular", size: gr.size.height * 0.16))
                        .foregroundColor(Color(#colorLiteral(red: 0.17, green: 0.23, blue: 0.84, alpha: 0.6)))
                        //.frame(width: 100.0, height: 150.0)
                        .offset(x: gr.size.width * 0.35, y: gr.size.height * 0.3)
                }
            }
    }
}



// Add Friends Page
struct AddFriends: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { gr in
            VStack(spacing: 20.0){
                header()
                    .frame(height: gr.size.height * 0.12)
                
                // find friends
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)))

                    RoundedRectangle(cornerRadius: 5)
                    .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 1)
                    
                    HStack{
                        Image("search_logo")
                        
                        Text("find friends")
                            .font(.custom("Roboto Light", size: gr.size.height * 0.03)).foregroundColor(Color(#colorLiteral(red: 0.5, green: 0.49, blue: 0.49, alpha: 1)))
                        
                        Spacer()
                    } .padding(.leading)
                }
                    .frame(width: gr.size.width * 0.9, height: gr.size.height * 0.05)
                
                Text("Requests")
                    .font(.custom("Roboto Mono Regular", size: gr.size.height * 0.03))
                    .frame(width: gr.size.width * 0.9, alignment: .leading)
                
                // Friend Request Template
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)))

                    RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color(#colorLiteral(red: 0.6313725709915161, green: 0.6627451181411743, blue: 0.9882352948188782, alpha: 1)), lineWidth: 1)
                    
                    HStack(spacing: 5.0){
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: gr.size.height * 0.04, height: gr.size.height * 0.04)
                            .foregroundColor(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                        
                        Text("@happydemoday")
                            .font(.custom("Roboto Light", size: gr.size.height * 0.03))
                        
                        Spacer()
                        
                        Image(systemName: "multiply.circle")
                            .resizable()
                            .font(.system(size: gr.size.height * 0.1, weight: .thin))
                            .frame(width: gr.size.height * 0.04, height: gr.size.height * 0.04)
                        
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .font(.system(size: gr.size.height * 0.1, weight: .thin))
                            .frame(width: gr.size.height * 0.04, height: gr.size.height * 0.04)
                            .foregroundColor(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))
                    } .padding(.horizontal, 10.0)
                } .frame(width: gr.size.width * 0.9, height: gr.size.height * 0.07)
            }
        }
        // This hides the navigation space when you enter into this view
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    // TODO: fix button color 
    func header() -> some View {
        return
            GeometryReader { gr in
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("Friends")
                        .font(Font.custom("Roboto-Light", size: gr.size.height * 0.45))
                        .padding(.leading)
                    
                    HStack(spacing: 0.0) {
                        // Return back to leaderboard page
                        Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                            ZStack {
                                Rectangle()
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                                Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)

                                Text("Leaderboard")
                                    .font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                            }
                        })
                        
                        Button(action: {}, label: {
                            ZStack {
                                Rectangle()
                                .fill(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)))

                                Rectangle()
                                .strokeBorder(Color(#colorLiteral(red: 0.16862745583057404, green: 0.22745098173618317, blue: 0.843137264251709, alpha: 1)), lineWidth: 0.5)
                                
                                HStack {
                                    Text("Add Friends").font(.custom("Roboto-Light", size: gr.size.height * 0.18))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                
                                }
                                
                            }
                        })
                    }
                }
            }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        Leaderboard()
    }
}

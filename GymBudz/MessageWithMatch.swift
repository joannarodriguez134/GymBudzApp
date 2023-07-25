//
//  MessageWithMatch.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct MessageWithMatch: View {
    var body: some View {
        
        ScrollView {
            ForEach(0..<10) { num in
                HStack(spacing: 0) {
                    
                    Image(systemName: "person.circle")
                        .font(.system(size: 50))
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: -60)
                    VStack{
                    Text("JACKIE")
                        .bold()
                        .offset(x: -52)
                        HStack {
                            Circle()
                                .foregroundColor(.green)
                                .frame(width: 15, height: 14)
                            Text("online")
                                .font(.system(size: 12))
                                .foregroundColor(Color(.lightGray))
                        }
                        .offset(x: -50)
                    }
                    Image(systemName: "phone.fill")
                        .font(.system(size: 30))
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: 40)
                    Buttons()
                   // Image(systemName: "ellipsis.circle")
                       // .foregroundColor(.red)
                      //  .font(.system(size: 25))
                        .offset(x: 50, y: -15)
                }
                
                VStack(spacing: 70) {
                        Text("Hi, Would you like to workout sometime?")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                            .cornerRadius(10)
                            .offset(y: 25)
                        
                        VStack {
                            Text(" Sure! What's your availability?")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(uiColor: .lightGray))
                                .cornerRadius(10)
                                .offset(x: -35, y: -15)
                        }
                        VStack {
                            Text("Does Monday @ 9am sound good?")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(10)
                                .offset(x: 15, y: -57)
                        }
                        Text("Yes! I'll see you then :)")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(uiColor: .lightGray))
                            .cornerRadius(10)
                            .offset(x: -55, y: -95)
                        Spacer()
                        
                        VStack {
                            Text("Type Message Here")
                                .padding(45)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .offset(y: 20)
                                .cornerRadius(20)
                            HStack{
                                Image(systemName: "paperplane")
                                    .padding()
                                    .offset(x: 150, y: -75)
                                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                                    .font(.system(size: 25))
                            }
                            
                        }
                    }
                
                
            }
        }
    }
}

struct MessageWithMatch_Previews: PreviewProvider {
    static var previews: some View {
        MessageWithMatch()
    }
}

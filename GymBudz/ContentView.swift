//
//  ContentView.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {

            VStack(spacing: 20) {
                Spacer()
                Text("CONGRATS!")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                Text("JACKIE just matched with you. They have a 90% workout goal similarity as you.")
                    .multilineTextAlignment(.center)
                NavigationLink(destination: Individual_Profile()) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                }
            
                                 
                
                Text("3 miles away.")
                NavigationLink("Send a message", destination: MessageWithMatch())
                    .padding()
                    .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .bold()
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                
                Spacer()
                VStack {
                    NavigationLink(destination: Calendar()) {                        HStack {
                        Image(systemName: "calendar")
                            .font(.system(size: 40)) .foregroundColor(.white)
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                            .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                        
                    }
                        NavigationLink(destination: Streaks()) {                        HStack {
                            Image(systemName: "flame")
                                .font(.system(size: 40)) .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(20)
                                .foregroundColor(Color.white)
                        }

                        NavigationLink(destination: Message1()) {                        HStack {
                            Image(systemName: "message.fill")
                                .font(.system(size: 40)) .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(20)
                                .foregroundColor(Color.white)
                        }
                            NavigationLink(destination: MoreAboutMe()) {                        HStack {
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 40)) .foregroundColor(.white)
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                                    .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                    .cornerRadius(20)
                                    .foregroundColor(Color.white)
                            
                                    }
                                    }
                                }
                            }
                    }
                
                    
                       
                }
                }
                
            
            
            
            }
        }
    }


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

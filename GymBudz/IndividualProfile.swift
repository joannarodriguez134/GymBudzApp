//
//  IndividualProfile.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct Individual_Profile: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image(systemName: "person.crop.square")
                        .font(.system(size: 300))
                        .offset(y: -55)
                    Text("Jackie,  20")
                        .bold()
                        .font(.system(size: 35))
                        .offset(x: -50, y: -60)
                    Text("3 miles away")
                        .offset(x: -85, y: -50)
                    Image(systemName: "location.circle.fill")
                        .offset(x: -10, y: -70)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    Text(" 50 Day Individual Streak")
                        .bold()
                        .offset(x: -40, y: -40)
                    Image(systemName: "flame")
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: 80, y: -60)
                    Text(" 1 Day Match Streak")
                        .bold()
                        .offset(x: -60, y: -50)
                    Image(systemName: "flame")
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: 40, y: -70)
                    
                    Text("My Bio")
                        .font(.system(size: 25))
                        .bold()
                        .offset(x: -100, y: -40)
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .frame(width: 290, height: 80)
                        .overlay(
                            HStack(spacing: 20) {
                                Text("Hi! I am looking for a gym buddy that is into weighlifting.")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        )
                        .offset(x: 0, y: -45)
                    
                    
                    
                    
                }
                Text("My Fitness Goals")
                    .font(.system(size: 25))
                    .bold()
                    .offset(x: -40, y: -27)
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(width: 290, height: 80)
                    .overlay(
                        HStack(spacing: 20) {
                            Text("I am going to the gym to gain muscle and lose fat. I am a casual gym-goer.")
                                .foregroundColor(.white)
                                .bold()
                        }
                    )
                    .offset(x: 0, y: -30)
                
                Text("My Gym Schedule")
                    .font(.system(size: 25))
                    .bold()
                    .offset(x: -40, y: -5)
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(width: 290, height: 80)
                    .overlay(
                        HStack(spacing: 20) {
                            Text("I'm available Monday, Wednesday, Friday from 6:00am-8:30am.")
                                .foregroundColor(.white)
                                .bold()
                        }
                    )
                    .offset(x: 0, y: -10)
                Text("More About Me")
                    .font(.system(size: 25))
                    .bold()
                    .offset(x: -50, y: -5)
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(width: 290, height: 60)
                    .overlay(
                        HStack(spacing: 20) {
                            Text("Gender: Female")
                                .foregroundColor(.white)
                              .bold()
                        }
                    )
                    .offset(x: 0, y: -10)
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(width: 290, height: 60)
                    .overlay(
                        HStack(spacing: 20) {
                            Text("Gym Location: Esporta Fitness")
                                .foregroundColor(.white)
                              .bold()
                        }
                    )
                    .offset(x: 0, y: -10)
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(width: 290, height: 80)
                    .overlay(
                        HStack(spacing: 20) {
                            Text("Education: Illinois Institute of Technology")
                                .foregroundColor(.white)
                              .bold()
                        }
                    )
                    .offset(x: 0, y: -10)
                
                VStack {
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .frame(width: 290, height: 60)
                        .overlay(
                            HStack(spacing: 20) {
                                Text("Work: Part-Time Babysitter")
                                    .foregroundColor(.white)
                                  .bold()
                            }
                        )
                    .offset(x: 0, y: -10)
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .frame(width: 290, height: 60)
                        .overlay(
                            HStack(spacing: 20) {
                                Text("Living In: Chicago")
                                    .foregroundColor(.white)
                                  .bold()
                            }
                        )
                        .offset(x: 0, y: -10)
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .frame(width: 290, height: 60)
                        .overlay(
                            HStack(spacing: 20) {
                                Text("Ethnicity: Hispanic")
                                    .foregroundColor(.white)
                                  .bold()
                            }
                        )
                        .offset(x: 0, y: -10)
                    
                    
                }
                
                 
                
            }
            
            
        }
    }
}

struct Individual_Profile_Previews: PreviewProvider {
    static var previews: some View {
        Individual_Profile()
    }
}


//
//  MoreAboutMe.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct MoreAboutMe: View {
    @State private var bio = ""
    @State private var fitnessGoals = ""
    @State private var schedule = ""
    @State private var gymLocation = ""
    @State private var work = ""
    @State private var education = ""
    @State private var city = ""
    @State private var hometown = ""
    @State private var ethnicity = ""
    @State private var showSettings = false
    @State private var showProfileOptions = false
    @State private var showMorePhotos = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(spacing: 10) {
                    ProfilePicture()
                        .fontWeight(.bold)
                    HStack {
                        Text("3 Day Individual Streak")
                        Image(systemName: "flame")
                            .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    }
                    HStack{
                        RectangleWithPopover()
                        RectangleWithPopover()
                        RectangleWithPopover()
                    }
                    Text("Pick some photos that show the true you.")
                    
                    
                    Divider()
                    
                }
                .padding(.horizontal)
                
                VStack(spacing: 20) {
                    Form {
                        Section(header: Text("My Bio")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 20))) {
                                TextEditor(text: $bio)
                                    .frame(height: 150)
                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                    .cornerRadius(8)
                                    .border(Color.gray, width: 0)
                            }
                        
                        Section(header: Text("My Fitness Goals")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 20))) {
                                TextEditor(text: $fitnessGoals)
                                    .frame(height: 100)
                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))  .cornerRadius(8)
                                    .border(Color.gray, width: 0)
                            }
                        
                        Section(header: Text("My Fitness Schedule")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .foregroundColor(.black)
                            .font(.system(size: 20))) {
                                TextEditor(text: $schedule)
                                    .frame(height: 100)
                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))       .cornerRadius(8)
                                    .border(Color.white, width: 0)
                            }
                        
                        Section(header: Text("More about me")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 20))){
                                
                                TextField("Add Gym Location:", text: $gymLocation)
                                TextField("Add Work:", text: $work)
                                TextField("Add Education:", text: $education)
                                TextField("Add City:", text: $city)
                                TextField("Add Hometown:", text: $hometown)
                                TextField("Add Ethnicity:", text: $ethnicity)
                                
                                
                            }
                        
                    }
                    .padding()
                    .scrollContentBackground(.hidden)
                }
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(1)
                
                NavigationLink(destination: ContentView()) {                        HStack {
                    Text("Submit")
                        .font(.system(size: 20)) .foregroundColor(.white)
                        .frame(width: 80, height: 60)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                }
                }

                
                
                Spacer()
                
                NavigationLink(
                    destination: Settings(),
                    isActive: $showSettings,
                    label: { EmptyView() }
                )
                .hidden()
                .onAppear {
                    // Reset the active state when returning from the Settings screen
                    showSettings = false
                }
                
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
            .background(Color.white)
            .navigationTitle("Edit Profile")
            .navigationBarItems(trailing: settingsButton)
            
          
        }
            
        }
        
        
        private var settingsButton: some View {
            Button(action: {
                showSettings = true
            }) {
                HStack(spacing: 4) {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    Text("Settings")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    
                    
                }
            }
        }
        
    }
struct MoreAboutMe_Previews: PreviewProvider {
    static var previews: some View {
        MoreAboutMe()
    }
}


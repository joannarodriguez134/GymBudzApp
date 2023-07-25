//
//  LogIn.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct LogIn: View {
    @State var remembered = false
    @State var isChecked = Color.white
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Untitled68_20230715033156")
                    .scaleEffect(0.25)
                    .offset(y:-230)
                VStack {
                    //logo
                    //.foregroundColor(.accentColor)
                    //app name:
                    Text("GymBudz")
                    // where you would type username:
                    Button("Username                                            "){
                        
                    }
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(10)
                    .foregroundColor(Color.black)
                    .padding(10)
                    //where you would type password:
                    Button("Password                                            "){
                        
                    }
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(10)
                    .foregroundColor(Color.black)
                    //remember me and forgot password:
                    HStack{
                        //square
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .strokeBorder(Color.blue, lineWidth: 1)
                                .frame(width: 20, height: 20)
                                .background(isChecked)
                            Button("."){
                                remembered = !remembered
                                if remembered == true {
                                    isChecked = Color.blue
                                } else{
                                    isChecked = Color.white
                                }
                            }
                        }
                        Text("Remember Me")
                            .frame(width:120)
                            .scaleEffect(0.95)
                            .offset(x: -10)
                        NavigationLink("Forgot Password", destination: ForgotPassword())
                            .foregroundColor(Color.blue)
                            .scaleEffect(0.95)
                            .offset(x: 5)
                    }
                    // log in button:
                    NavigationLink(destination: ContentView()) {                        HStack {
                        Text("Login")
                            .font(.system(size: 20)) .foregroundColor(.white)
                            .frame(width: 80, height: 55)
                            .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                            .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                    }
                    }
                    
                    //sign up screen:
                    NavigationLink("New? Create an Account", destination: LocationSharing())
                        .padding(20)
                        .foregroundColor(Color.blue)
                    
                }
            }
            .navigationTitle("Sign In")
        }
        //.padding()
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}


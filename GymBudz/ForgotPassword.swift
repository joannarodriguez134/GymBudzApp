//
//  ForgotPassword.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct ForgotPassword: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(height: 80)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                HStack{
                    // back button doesnt actually work, use navigationtab on top
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color.white)
                        .scaleEffect(2)
                        .offset(x:-40)
                    Text("Forgot Password")
                        .foregroundColor(Color.white)
                        .bold()
                        .scaleEffect(1.5)
                }
                .offset(x:-50)
                
            }
            .offset(y: -270)
            //.ignoresSafeArea()
            Text("Enter Username/Email")
                .scaleEffect(1.2)
                .offset(x:-40, y: -200)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 50)
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                .offset(y:-200)
            Button("Reset password"){}
                .padding(20)
                .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .offset(y: -150)
        }
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}

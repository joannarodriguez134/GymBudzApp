//
//  CreateAccount.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct CreateAccount: View {
    var body: some View {
        NavigationStack{
            ScrollView {
            VStack{
                Text("Create an Account")
                    .padding(40)
                    .bold()
                    .scaleEffect(2)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                inputInfo(inputType: "Username", offsetAmt: -95)
                inputInfo(inputType: "Password", offsetAmt: -100)
                inputInfo(inputType: "Confirm Password", offsetAmt: -65)
                inputInfo(inputType: "Email", offsetAmt: -110)
                inputInfo(inputType: "Confirm Email", offsetAmt: -75)
                NavigationLink("Sign up", destination: Onboarding())
                    .padding(20)
                    .foregroundColor(Color.white)
                    .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .cornerRadius(20)
                    .padding(30)
                }
            }
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}

struct inputInfo: View {
    var inputType: String
    var offsetAmt: Double
    var body: some View {
        VStack {
            Text("\(inputType): *")
                .offset(x: offsetAmt)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 50)
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
        }
        .padding(10)
                
    }
}


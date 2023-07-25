//
//  Settings.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(height: 100)
                    .overlay(
                        HStack(spacing: 20) {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color.white)
                            Text("Settings")
                                .font(.system(size: 35))
                                .bold()
                                .foregroundColor(.white)
                            
                        }
                            .offset(x: -45)
                    )
                NavigationLink(destination: MoreAboutMe()) {                        HStack {
                    Text("Edit Profile ")
                        .font(.system(size: 40)) .foregroundColor(.black)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                            .font(.system(size: 30))
                    
                       
                }
                }
                .offset(y: 50)
                NavigationLink(destination: ChangeSurveyAnswers()) {                        HStack {
                    Text("Change Survey Answers ")
                        .font(.system(size: 40)) .foregroundColor(.black)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                            .font(.system(size: 30))
                    
                       
                }
                }
                .offset(y: 70)
                HStack{
                    Text("Sign Out")
                        .font(.system(size: 40)) .foregroundColor(.black)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                            .font(.system(size: 30))
                }
                .offset(y: 80)
                
            }
            .offset(y: -300)
        }
    }
}
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}


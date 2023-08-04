//
//  Onboarding.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    Text("Take This Quick Survey To Find Your Accurate Match!")
                        //.font(.title)
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    Home()
                    Age()
                    ToggleGender()
                    ToggleScheduleDay()
                    ToggleScheduleSunday()
                    ToggleScheduleTime()
                    
                    NavigationLink(destination: MoreAboutMe()) {                        HStack {
                        Text("Submit")
                            .font(.system(size: 20)) .foregroundColor(.white)
                            .frame(width: 80, height: 60)
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

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

//
//  IndividualProfileButton.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct IndividualProfileButton: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: Individual_Profile()) {                        HStack {
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))

                }

            }
        }
    }
}

struct IndividualProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        IndividualProfileButton()
    }
}


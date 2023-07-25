//
//  Messages.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .frame(height: 120)
                    .overlay(
                        HStack(spacing: 20) {
                            Image(systemName: "message.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color.white)
                            
                            
                        }                                               )
                HStack {
                    Text("New Matches")
                        .offset(x: -75, y: 20)
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                    Circle()
                        .frame(width: 30, height: 30)
                        .offset(x: -75, y: 20)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    Text("2")
                        .offset(x: -103, y: 20)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                }
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .offset(x: 40, y: 40)
                        .font(.system(size: 55))
                    Text("Dan")
                        .offset(x: -17, y: 86)
                    // .font(.system(size: 13))
                        .fixedSize(horizontal: true, vertical: true)
                    
                    Circle()
                        .frame(width: 30, height: 20)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: -30, y: 25)
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 55))
                        .offset(x: -15, y: 40)
                    Circle()
                        .frame(width: 30, height: 20)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .offset(x: -50, y: 23)
                    Text("Jackie")
                        .offset(x: -120, y: 85)
                        .fixedSize(horizontal: true, vertical: true)
                        .lineLimit(1)
                    Image(systemName: "person.circle.fill")
                        .offset(x: -90, y: 40)
                        .font(.system(size: 55))
                    
                }
                Text("Joanna")
                    .offset(x: 70, y: 43)
                Image(systemName: "chevron.right")
                    .font(.system(size: 45))                    .offset(x: 140, y: -30)
                Divider()
                    .offset(y: 10)
                Text("Messages")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .offset(x: -115, y: 40)
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .offset(x: -30, y: 10)
                Text("1")
                    .fontWeight(.bold)
                    .offset(x: -30, y: -15)
                    .foregroundColor(.white)
                
                Spacer()
                
                
                
            }
            
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}

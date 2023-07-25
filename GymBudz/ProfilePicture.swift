//
//  ProfilePicture.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct ProfilePicture: View {
    @State private var isPopoverVisible = false
    
    var body: some View {
        VStack(spacing: 10) {
            Rectangle()
                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                .frame(width: 50, height: 50)
                .cornerRadius(10)
                .overlay(
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(Color.white)
                        .font(.system(size: 25))
                )
            Text("USER")
                    
                .fontWeight(.bold)
                .onTapGesture {
                    // Toggle the visibility of the popover
                    isPopoverVisible.toggle()
                }
            
            if isPopoverVisible {
                Rectangle()
                    .foregroundColor(Color.clear)
                    .background(Color.clear)
                    .onTapGesture {
                        // Dismiss the popover when tapped outside
                        isPopoverVisible = false
                    }
                    .popover(isPresented: $isPopoverVisible, arrowEdge: .top) {
                        VStack {
                            Button(action: {
                                // Upload photo action
                                isPopoverVisible = false
                            }) {
                                Text("Upload Photo")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)                     .frame(width: 180, height: 40)
                                    .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(20)                            }
                            .padding()
                            
                            Button(action: {
                                // Take photo action
                                isPopoverVisible = false
                            }) {
                                Text("Take Photo")
                                .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)                    .frame(width: 180, height: 40)
                                    .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(20)                            }
                            .padding()
                            
                            Button(action: {
                                // Cancel action
                                isPopoverVisible = false
                            }) {
                                Text("Cancel")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)                     .frame(width: 180, height: 40)
                                                        .background(Color(red: 0.85, green: 0.18, blue: 0.18))
                                .cornerRadius(20)                            }
                            .padding()
                        }
                        .padding()
                    }
            }
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}

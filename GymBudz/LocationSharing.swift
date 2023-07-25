//
//  LocationSharing.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct LocationSharing: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Allow ''GymBudz'' to access your location?")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                Text("Your location will be used to access GymBudz services such as matching you with people that are nearby. Your location will not be sold or used for ad targeting.")
                    .padding(.horizontal)
                    .offset(y: 15)
                Image("Maps")
                    .offset(y: 15)
                NavigationLink(destination: CreateAccount()) {
                    HStack{
                        Text("Always Allow")
                            .offset(y: 15)
                            .foregroundColor(.blue)
                        
                    }
                }
                Divider()
                .offset(y: 15)
                NavigationLink(destination: CreateAccount()) {
                    HStack{
                        Text("Allow While Using The App")
                            .offset(y: 15)
                            .foregroundColor(.blue)
                    }
                }
                Divider()
                    .offset(y: 15)
                Text("Dont Allow")
                    .offset(y: 15)
                    .foregroundColor(.blue)
                Divider()
                    .offset(y: 15)
            }
        }
    }
}

struct LocationSharing_Previews: PreviewProvider {
    static var previews: some View {
        LocationSharing()
    }
}

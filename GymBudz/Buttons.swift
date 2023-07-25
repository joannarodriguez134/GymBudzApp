//
//  Buttons.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/29/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        Menu {
            Button("Cancel", role: .destructive) {
            }
            Menu {
                Button(role: .destructive) {
                    
                } label: {
                    Label("Report", systemImage: "flag.fill")
                }
                    
                } label: {
                    Label("More", systemImage: "questionmark.circle")
                }
                Button {
                    
                } label: {
                    Label("Block", systemImage: "circle.slash")
                }
                Button {
                    
                } label: {
                    Label("Unfriend", systemImage: "person.badge.minus")
                }
                Button {
                    
                } label: {
                    Label("View Profile", systemImage: "person.fill")
                }
            } label: {
                Label("  ", systemImage: "ellipsis.circle")
                    .font(.system(size: 40))
                    .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    .rotationEffect(.degrees(-90))
            }
        }
    }

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

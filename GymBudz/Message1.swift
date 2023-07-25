//
//  Message1.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/29/23.
//

import SwiftUI

struct Message1: View {
    var body: some View {
        NavigationView {
            ScrollView {
            VStack {
                Messages()
                    Spacer()
                    
                    ForEach(0..<10, id: \.self) { num in
                        VStack {
                            NavigationLink {
                                
                                MessageWithMatch()
                                
                            } label: { HStack(spacing: 16) {
                                Image(systemName: "person.circle")
                                    .font(.system(size: 45))
                                    .foregroundColor(Color.red)
                                    .padding(1)
                            }
                                
                                
                                
                                VStack(alignment: .leading) {
                                    Text("Username")
                                        .font(.system(size: 16, weight: .bold))
                                    Text("Message Sent")
                                        .font(.system(size: 14))
                                    
                                }
                                Spacer()
                                
                                Text("3d")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            Divider()
                                .padding(.vertical)
                        }.padding(.horizontal)
                        
                    }
                    
                }
                
            }
        }
            
            // .navigationTitle("Messages")
        }
        
    }


struct Message1_Previews: PreviewProvider {
    static var previews: some View {
        Message1()
    }
}

//
//  Streaks.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct Streaks: View {
    @State var no = false
    @State var restDay = false
    @State var ind = false
    @State var tgt = false
    @State var partnerDropDown = false
    @State var op1 = false
    @State var op2 = false
    @State var op3 = false
    @State var searchInput = ""
    @State var confirmedPartner = true
    var body: some View {
        NavigationView {
            NavigationStack {
                ZStack {
                    VStack {
                        //header
                        ZStack {
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: 400, height: 100)
                                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                            HStack{
                                Image(systemName: "chevron.backward")
                                Text("Streaks")
                                    .bold()
                            }
                            .scaleEffect(2)
                            .foregroundColor(Color.white)
                            .offset(x:-90)
                        }
                        
                        //question w mcq
                        Text("Did you complete your workout?")
                            .scaleEffect(1.4)
                            .bold()
                            .padding(5)
                            .offset(y:20)
                        //toggles
                        VStack{
                            Options(tog: $no, label: "No", moveX: 20)
                            Options(tog: $restDay, label: "No, but it was a rest day", moveX: 45)
                            Options(tog: $ind, label: "Yes, individually", moveX: 35)
                            Options(tog: $tgt, label: "Yes, together", moveX: 32)
                        }
                        .padding(20)
                        //partner dropdown
                        Text("Who did you work out with?")
                            .scaleEffect(1.4)
                            .bold()
                            .offset(x:-15, y:10)
                            .padding(10)
                        ZStack {
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: 270, height: 50)
                                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .offset(x:-20)
                                .padding(10)
                            ZStack {
                                Image(systemName: "chevron.down")
                                    .scaleEffect(1.5)
                                Button("."){
                                    if tgt {
                                        partnerDropDown = !partnerDropDown
                                    }
                                }
                            }
                            .offset(x:90)
                        }
                        .padding(10)
                        
                        //search dropdown
                        Text("Which gym do you go to?")
                            .scaleEffect(1.4)
                            .bold()
                            .offset(x:-25)
                            .padding(10)
                        ZStack{
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: 270, height: 50)
                                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .offset(x:-20)
                            Image(systemName: "magnifyingglass")
                                .scaleEffect(1.5)
                            .offset(x:90)
                            TextField("Location", text: $searchInput)
                                .offset(x:110)
                                .scaleEffect(1.5)
                                
                        }
                        
                        //submit button
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 200, height: 70)
                                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                            NavigationLink("Submit"){
                                if restDay{
                                    RestDay()
                                }
                                if ind {
                                    IndvStreak()
                                }
                                if tgt && confirmedPartner {
                                    TeamStreak()
                                }
                            }
                            .bold()
                            .foregroundColor(Color.white)
                            .scaleEffect(1.5)
                        }
                        .padding(50)
                        
                        
                    }
                    //.offset(y:-110)
                    if op1 {
                        Text("Jackie")
                            .scaleEffect(1.4)
                            .offset(x:-100, y:60)
                    }
                    if op2 {
                        Text("Joanna")
                            .scaleEffect(1.4)
                            .offset(x: -100, y:60)
                    }
                    if op3 {
                        Text("Megan")
                            .scaleEffect(1.4)
                            .offset(x:-100, y:60)
                    }
                    if partnerDropDown{
                        ZStack {
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: 270, height: 180)
                                .foregroundColor(Color.white)
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 270, height: 50)
                                        .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                    Button("Jackie"){
                                        op1 = !op1
                                        op2 = false
                                        op3 = false
                                    }
                                    .foregroundColor(Color.black)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 270, height: 50)
                                        .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                    Button("Joanna"){
                                        op2 = !op2
                                        op1 = false
                                        op3 = false
                                    }
                                    .foregroundColor(Color.black)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: 270, height: 50)
                                        .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                    Button("Megan"){
                                        op3 = !op3
                                        op1 = false
                                        op2 = false
                                    }
                                    .foregroundColor(Color.black)
                                }
                            }
                        }
                        //dropDown(op1: "Joanna", op2: "Jackie", op3: "Megan")
                            .offset(x:-20, y:180)
                    }
                    
                }
                //.padding()
            }
        }
    }
}

struct Streaks_Previews: PreviewProvider {
    static var previews: some View {
        Streaks()
        //Congrats()
    }
}

struct Options: View {
    var tog : Binding<Bool>
    var label : String
    var moveX : Double
    var body: some View {
        Toggle(isOn: tog) {
            Text(label)
                .scaleEffect(1.3)
                .offset(x: moveX)
        }
    }
}

struct choices: View {
    var option : String
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 270, height: 50)
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
            Button(option){
                
            }
                .foregroundColor(Color.black)
        }
    }
}

struct dropDown: View {
    var op1 : String
    var op2 : String
    var op3 : String
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 270, height: 180)
                .foregroundColor(Color.white)
            VStack {
                choices(option: op1)
                choices(option: op2)
                choices(option: op3)
            }
        }
    }
}

struct Congrats: View {
    var heading : String
    var line1 : String
    var line2 : String
    var line3 : String
    var body: some View{
        NavigationStack {
            ZStack {
                Color(red: 0.85, green: 0.18, blue: 0.18)
                VStack {
                    if heading == "Congrats" {
                        Text(heading)
                            .scaleEffect(2.2)
                            .bold()
                            .foregroundColor(Color.white)
                            .scaleEffect(1.3)
                            .padding(20)
                    } else {
                        Text(heading)
                            .scaleEffect(2.2)
                            .bold()
                            .foregroundColor(Color.white)
                            .padding(20)
                    }
                    Text(line1)
                        .scaleEffect(1.4)
                        .frame(width: 250)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Text(line2)
                        .scaleEffect(1.4)
                        .frame(width: 250)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(10)
                    Text(line3)
                        .scaleEffect(1.4)
                        .frame(width: 250)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(10)
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 250, height: 70)
                            .foregroundColor(Color.white)
                        NavigationLink("Go to Calendar"){
                            Calendar()
                        }
                        .scaleEffect(1.5)
                    }
                    .padding(30)
                }
            }
        }
    }
}

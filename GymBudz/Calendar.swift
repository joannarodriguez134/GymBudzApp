//
//  Calendar.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct Calendar: View {
    @State var month = 7
    @State var century = 20
    @State var year = 23
    @State var months = ["January", "February","March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    @State var hasPopUp = true
    var body: some View {
        NavigationStack {
            ZStack{
                VStack {
                    ZStack {
                        //heading
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width:500, height: 100)
                            .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        
                            .offset(y:-250)
                        HStack {
                            Text("Calendar")
                                .foregroundColor(Color.white)
                                .scaleEffect(2)
                                .bold()
                                .offset(x: -90, y:-250)
                                .font(.system(size: 15))
                            ZStack{
                                Image(systemName: "gearshape.fill")
                                    .scaleEffect(2)
                                    .foregroundColor(Color.white)
                                NavigationLink("o", destination: Settings()).foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                            }
                            .offset(x:100, y:-250)
                        }
                        
                    }
                    ZStack{
                        HStack{
                            ZStack {
                                
                                Image(systemName: "arrow.backward")
                                    .scaleEffect(1.5)
                                Button("--"){
                                    if month > 1 {
                                        month -= 1
                                    }
                                }
                            }
                            .offset(x: -120, y: -230)
                            Text(" \(century)\(year)")
                                .scaleEffect(1.8)
                                .offset(x: 60, y: -230)
                                .bold()
                            ZStack {
                                Image(systemName: "arrow.forward")
                                    .scaleEffect(1.5)
                                Button ("--"){
                                    if month < 12 {
                                        month += 1
                                    }
                                }
                            }
                            .offset(x: 120, y: -230)
                        }
                        //where the month is
                        Text(months[(month-1)])
                            .scaleEffect(1.8)
                            .offset(x:-60, y: -230)
                            .bold()
                    }
                    //sunday thru saturday
               //    .foregroundColor(Color.red)
                                      weeks(sun: "S  ", mon: "M  ", tue: "Tu  ", wed: "W  ", thu: "Th  ", fri: "F  ", sat: "S  ", up: -190)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                        .bold()
                    //numbers in the calendar
                    weeks(sun: "1   ", mon: "2   ", tue: "3   ", wed: "4   ", thu: "5   ", fri: "6   ", sat: "7  ", up: -160)
                    weeks(sun: "8  ", mon: "9  ", tue: "10  ", wed: "11  ", thu: "12 ", fri: "13 ", sat: "14 ", up: -130)
                    weeks(sun: "15 ", mon: "16 ", tue: "17  ", wed: "18 ", thu: "19 ", fri: "20 ", sat: "21 ", up: -100)
                    weeks(sun: "22 ", mon: "23 ", tue: "24", wed: "25 " , thu: "26 ", fri: "27", sat: "28 ", up: -70)
                    weeks(sun: "29 ", mon: "30 ", tue: "31   ", wed: "     " , thu: "     ", fri: "     ", sat: "    ", up: -40)
                    
                }
                ZStack {
                    Circle()
                        .frame(width: 40)
                        .foregroundColor(Color.white)
                    Image(systemName: "person.circle.fill")
                        .scaleEffect(3)
                        .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                    
                    if hasPopUp {
                        popUp(partner: "Jackie", seen: hasPopUp)
                            .offset(x:70, y: -100)
                    }
                    Button("."){
                        withAnimation(.easeIn(duration: 1)){
                            hasPopUp = !hasPopUp
                        }
                    }
                    .foregroundColor(Color.white)
                }
                .offset(x:-55, y:-75)
                
            }
            Text("Days Worked Out:")
                .bold()
                .font(.system(size: 25))
            Text("1/31")
                .foregroundColor(Color(red: 0.85, green: 0.18, blue: 0.18))
                .bold()
                .offset(x: 140, y: -30)
                .font(.system(size: 25))
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
        //popUp(partner: "Joanna")
    }
}

struct popUp: View {
    var partner: String
    var seen : Bool
    var body: some View{
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.white)
                .frame(width: 150, height: 110)
            Image(systemName: "bubble.left")
                .scaleEffect(9)
                .offset(y: 15)
            VStack{
                Text("You worked out")
                    .bold()
                Text("with \(partner)")
                    .bold()
                Image(systemName: "person.circle")
                    .scaleEffect(2)
                    .padding(5)
            }
           // .foregroundColor(Color.red)
            .opacity(seen ? 1 : 0)
        }
    }
}

struct weeks: View {
    var sun: String
    var mon: String
    var tue: String
    var wed: String
    var thu: String
    var fri: String
    var sat: String
    var up : Double
    var body: some View {
        HStack{
            Text(sun)
            Text(mon)
            Text(tue)
            Text(wed)
            Text(thu)
            Text(fri)
            Text(sat)
        }
        .scaleEffect(1.5)
        .offset(y: up)
    }
}




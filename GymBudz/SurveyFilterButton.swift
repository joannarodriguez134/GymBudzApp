//
//  GymBudzMatchesFilter.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/25/23.
//

import SwiftUI

struct SurveyFilterButton: View {
    var body: some View {
        VStack {
            ScrollView {
                Home()
                Age()
                ToggleGender()
                ToggleScheduleDay()
                ToggleScheduleSunday()
                ToggleScheduleTime()
                
            }
            
           
        }
    }
}

struct SurveyFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        SurveyFilterButton()
    }
}

struct Home : View {
    @State var width: CGFloat = 0
    @State var width1: CGFloat = 15
    var totalWidth = UIScreen.main.bounds.width - 60
    
    var body: some View{
        
        VStack {
            
            Text("How far can your matches be from you?")
                .font(.title)
                .fontWeight(.bold)
            Text("\(self.getValue(val: self.width / self.totalWidth)) - \(self.getValue(val: self.width1 / self.totalWidth)) miles away from you")
                .padding(.top)
                .fontWeight(.bold)
            

            ZStack(alignment: .leading) {
                
                Rectangle()
                 .fill(Color.black.opacity(0.20))
                 .frame(height: 4)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(width: self.width1 - self.width, height: 6)
                    .offset(x: self.width + 18)
                HStack(spacing: 0) {
                   
                    Circle()
                        .fill(Color.black)
                        .frame(width: 18, height: 18)
                        .offset(x: self.width)
                        .gesture(
                        DragGesture()
                            .onChanged({ (value) in
                                
                                if value.location.x >= 0 && value.location.x <= self.width1{
                                    
                                    self.width = value.location.x
                                }
                                    
                                
                            })
                        )
                    Circle()
                        .fill(Color.black)
                        .frame(width: 18, height: 18)
                        .offset(x: self.width1)
                        .gesture(
                        DragGesture()
                            .onChanged({ (value) in
                                
                    if value.location.x <= self.totalWidth && value.location.x >= self.width1{
                                    
                                self.width1 =
                                    value.location.x
                                }
                                    
                                
                            })
                        )
                    
                }
               // .padding(.top, 25)
            }
        }
        .padding()
    }
    func getValue(val: CGFloat)->String{
        return String(format: "%.1f", val)
    }
}


struct Age : View {
  @State var width: CGFloat = 0
  @State var width1: CGFloat = 15
  var totalWidth = UIScreen.main.bounds.width - 60
  var body: some View{
    VStack {
      Text("What age should your match be?")
        .font(.title)
        .fontWeight(.bold)
      Text("Between \(18) - \(25)")
        .padding(.top)
        .fontWeight(.bold)
      ZStack(alignment: .leading) {
        Rectangle()
         .fill(Color.black.opacity(0.20))
         .frame(height: 4)
        Rectangle()
          .fill(Color.black)
          .frame(width: self.width1 - self.width, height: 6)
          .offset(x: self.width + 18)
        HStack(spacing: 0) {
          Circle()
            .fill(Color.black)
            .frame(width: 18, height: 18)
            .offset(x: self.width)
            .gesture(
            DragGesture()
              .onChanged({ (value) in
                if value.location.x >= 0 && value.location.x <= self.width1{
                  self.width = value.location.x
                }
              })
            )
          Circle()
            .fill(Color.black)
            .frame(width: 18, height: 18)
            .offset(x: self.width1)
            .gesture(
            DragGesture()
              .onChanged({ (value) in
          if value.location.x <= self.totalWidth && value.location.x >= self.width1{
                self.width1 =
                  value.location.x
                }
              })
            )
        }
        
      }
    }
    .padding()
  }

  }

struct ToggleGender: View {
    @State var toggleIsOn: Bool = false
    @State var toggleIsOnMale: Bool = false
    @State var toggleIsOnNonbinary: Bool = false
    @State var toggleIsOnBeginner: Bool = false
    @State var toggleIsOnIntermediate: Bool = false
    @State var toggleIsOnAdvanced: Bool = false
    
    @State var toggleIsOnMonday: Bool = false
    @State var toggleIsOnTuesday: Bool = false
    @State var toggleIsOnWednesday: Bool = false
    @State var toggleIsOnThursday: Bool = false
    @State var toggleIsOnFriday: Bool = false
    @State var toggleIsOnSaturday: Bool = false
    @State var toggleIsOnSunday: Bool = false
    var body: some View {
        Text("Gender Preferences")
            .font(.title)
            .fontWeight(.bold)
        Text("What gender(s) would you want to workout with? ")
            .fontWeight(.bold)
        Toggle(
            isOn: $toggleIsOn,
            label: {
                Text("Female")
                
            })
        
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        
        Toggle(
            isOn: $toggleIsOnMale,
            label: {
                Text("Male")
        
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnNonbinary,
            label: {
                Text("Nonbinary")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Text("Experience Level")
            .font(.title)
            .fontWeight(.bold)
        Text("What experience level would you like your matches to have to have?")
            .fontWeight(.bold)
        Toggle(
            isOn: $toggleIsOnBeginner,
            label: {
                Text("Beginner")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnIntermediate,
            label: {
                Text("Intermediate")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnAdvanced,
            label: {
                Text("Advanced")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
    }
}
    
struct ToggleScheduleDay: View {
    @State var toggleIsOnMonday: Bool = false
    @State var toggleIsOnTuesday: Bool = false
    @State var toggleIsOnWednesday: Bool = false
    @State var toggleIsOnThursday: Bool = false
    @State var toggleIsOnFriday: Bool = false
    @State var toggleIsOnSaturday: Bool = false
    @State var toggleIsOnSunday: Bool = false
    var body: some View {
        Text("Schedule Preferences")
            .font(.title)
            .fontWeight(.bold)
        Text("What days would you be available?")
            .fontWeight(.bold)
        Toggle(isOn: $toggleIsOnMonday,
               label: {
            Text("Monday")
        })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnTuesday,
            label: {
                Text("Tuesday")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(isOn: $toggleIsOnWednesday,
               label: {
            Text("Wednesday")
        })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnThursday,
            label: {
                Text("Thursday")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnFriday,
            label: {
                Text("Friday")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnSaturday,
            label: {
                Text("Saturday")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
    }
}

struct ToggleScheduleSunday: View {
    @State var toggleIsOnSunday: Bool = false
    @State var toggleIsOnMorning: Bool = false
    @State var toggleIsOnAfternoon: Bool = false
    @State var toggleIsOnEvening: Bool = false
    @State var toggleIsOnNight: Bool = false
    var body: some View {
       Toggle(
        isOn: $toggleIsOnSunday,
        label: {
            Text("Sunday")
        })
       .toggleStyle(SwitchToggleStyle(tint: Color.red))
       .padding(.horizontal, 100)
        Text("What time of day?")
            .fontWeight(.bold)
           //.offset(y: 10)
        Toggle(
            isOn: $toggleIsOnMorning,
            label: {
                Text("5:00am-12:00pm")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 95)
        Toggle(
            isOn: $toggleIsOnAfternoon,
            label: {
                Text("12:00pm-4:00pm")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 95)
        Toggle(
            isOn: $toggleIsOnEvening,
            label: {
                Text("4:00pm-9:00pm")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 95)
        Toggle(
            isOn: $toggleIsOnNight,
            label: {
                Text("9:00pm-4:00am")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 95)
    }
}
struct ToggleScheduleTime: View {
    @State var toggleIsOnThirty: Bool = false
    @State var toggleIsOnHour: Bool = false
    @State var toggleIsOnTwo: Bool = false
    @State var toggleIsOn: Bool = false
    @State var toggleIsOnMale: Bool = false
    @State var toggleIsOnNonbinary: Bool = false
    
    var body: some View {
        Text("How long do your workouts typically last?")
            .fontWeight(.bold)
        Toggle(isOn:
                $toggleIsOnThirty,
               label: {
            Text("30 minutes to an hour")
        })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 70)
        Toggle(isOn: $toggleIsOnHour,
               label: {
            Text("One hour to two hours")
        })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 70)
        Toggle(
            isOn: $toggleIsOnTwo,
            label: {
                Text("Two hours or more")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 70)
        Text("What is your gender identity?")
            .fontWeight(.bold)
        Toggle(
            isOn: $toggleIsOn,
            label: {
                Text("Female")
                
            })
        
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        
        Toggle(
            isOn: $toggleIsOnMale,
            label: {
                Text("Male")
                
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Toggle(
            isOn: $toggleIsOnNonbinary,
            label: {
                Text("Nonbinary")
            })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding(.horizontal, 100)
        Text("What is your date of birth?")
                Rectangle()
                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .frame(width: 150, height: 40)
                    .cornerRadius(10)
                    .overlay(
                        Text("DD/MM/YYYY")
                            .foregroundColor(.gray)
                            .bold()
                    )
                
            }
        }
    




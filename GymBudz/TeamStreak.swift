//
//  TeamStreak.swift
//  GymBudz
//
//  Created by 28 GO Particpant on 7/26/23.
//

import SwiftUI

struct TeamStreak: View {
    var body: some View {
        Congrats(heading: "Congrats", line1: "on completing your workout", line2: "+1 Individual Streaks", line3: "+1 Team Streaks")
    }
}

struct TeamStreak_Previews: PreviewProvider {
    static var previews: some View {
        TeamStreak()
    }
}

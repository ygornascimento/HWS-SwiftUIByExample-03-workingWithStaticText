//
//  HowToFormatDatesInsideTextViews.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 23/11/23.
//

import SwiftUI

struct HowToFormatDatesInsideTextViews: View {
    var body: some View {
        Text(Date.now...Date.now.addingTimeInterval(600))
        
        //Show just the date
        Text(Date.now.addingTimeInterval(600), style: .date)
        
        //Show just the time
        Text(Date.now.addingTimeInterval(600), style: .time)
        
        //Show the relative distance from now, automatically updating
        Text(Date.now.addingTimeInterval(600), style: .relative)
        
        //Make a timer style, automatically updating
        Text(Date.now.addingTimeInterval(600), style: .timer)
    }
}

#Preview {
    HowToFormatDatesInsideTextViews()
}

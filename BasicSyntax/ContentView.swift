//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var nextFullMoodDate = Date()

    var withinNext30Days: ClosedRange<Date> {
        let today = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!

        let next30Days = Calendar.current.date(byAdding: .day, value: 30, to: Date())!

        return today...next30Days
    }

    var body: some View {
        VStack(spacing: 30) {
            Text("DatePicker").font(.largeTitle)
            Text("Min and Max Date Range").foregroundColor(.gray)
            HStack {
                Spacer()
                Image(systemName: "moon.circle")
                Spacer()
                Circle().frame(width: 60, height: 60)
                Spacer()
                Image(systemName: "moon.circle.fill")
                Spacer()
            }
            .foregroundColor(.yellow)

            Text("Select date of next full moon").font(.title)
            DatePicker("", selection: $nextFullMoodDate, in: withinNext30Days, displayedComponents: .date)
                .padding(.horizontal, 28)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.yellow))
                .shadow(radius: 20, y:20).labelsHidden()

            Text("(Valid range only in the next 30 days)")
                .padding(.vertical)
            Spacer()
        }
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

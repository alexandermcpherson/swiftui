//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var todaysDate = Date()

    var body: some View {
        VStack(spacing: 20) {
            Text("DatePicker").font(.largeTitle)
            Text("Title")
                .foregroundColor(.gray)
            Text("You can provide an optional title for pickers.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.white)

            HStack {
                Spacer()
                Image(systemName: "moon.circle")
                Spacer()
                Circle().frame(width: 60, height: 60)
                Spacer()
                Image(systemName: "moon.circle.fill")
                Spacer()
            }
            .foregroundColor(Color.yellow)

            DatePicker("Date", selection: $todaysDate, displayedComponents: .date).padding(.horizontal)

            Text("This doesnt really look good. So you might want to add your own title.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

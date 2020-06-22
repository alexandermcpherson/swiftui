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
            Text("Your own title")
                .foregroundColor(.gray)
            Text("Even when you add your own title, you still have the problem with the date picker indenting")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)

            VStack(spacing: 10) {
                Text("Todays date")
                    .font(.title)
                DatePicker("", selection: $todaysDate, displayedComponents: .date)
            }

            Text("How can you previent the indenting")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
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

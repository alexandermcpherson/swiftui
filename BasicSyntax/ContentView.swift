//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var justTime = Date()
    @State private var theDateAndTime = Date()

    var body: some View {
        VStack(spacing: 20) {
            Text("DatePicker").font(.largeTitle)
            Text("Displayed Components")
                .foregroundColor(.gray)
            Text("Shoe date and time parts with displayedComponents.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)

            DatePicker("", selection: $justTime, displayedComponents: .hourAndMinute)

            DatePicker("", selection: $theDateAndTime, displayedComponents: [.date, .hourAndMinute])

            }
        .font(.title)
        .labelsHidden() // Notice I can add this modifier to the parent to be applied to the children
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

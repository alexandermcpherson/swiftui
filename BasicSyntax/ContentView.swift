//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var arrivalDate = Date()

    let fromToday = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!

    let mainColor = Color("AccentColorDark") // This is set in teh asset catalogue didnt know we could do this.

    var body: some View {
        VStack(spacing: 20) {
            Text("DatePicker").font(.largeTitle)
            Text("From Date or Time").foregroundColor(.gray)
            Text("You can set a starting date or tome with the date picker").frame(maxWidth: .infinity).padding().background(mainColor).foregroundColor(.white)
            Image("kb")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Arrival Date")
            DatePicker("", selection: $arrivalDate, in: fromToday...,
            displayedComponents: .date) .padding(.horizontal, 28)
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(mainColor))
            .padding(.horizontal)
            .labelsHidden()

        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

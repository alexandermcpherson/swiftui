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
    let mainColor = Color("LightPinkColor")

    var body: some View {
        VStack(spacing: 20) {
            Text("DatePicker")
                .font(.largeTitle)
            Text("To Date or Time")
                .foregroundColor(.gray)
            Text("You can set a maximum date or time that you cannot go past with the date picker")
                .frame(maxWidth: .infinity)
                .padding()
                .background(mainColor)
                .foregroundColor(.white)

            Image("kb")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text("Date and Time of Birth")

            DatePicker("", selection: $arrivalDate, in: ...Date(),
                       displayedComponents: [.date, .hourAndMinute])
                .background(RoundedRectangle(cornerRadius: 20).stroke(mainColor, lineWidth:2))
                .padding(.horizontal)
                .labelsHidden()
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

//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section(header: Text("Form").font(.largeTitle).bold().foregroundColor(.white)) {
                Text("List row background").font(.title).foregroundColor(.gray)
                Text("Images work a little different as you can see here")
                Text("The image is actually set on the row of the second image")
            }
            Section(header: Text("Images").font(.title).foregroundColor(.white)) {
                Text("A image is set as a background for the row below. This works fine for rows, but when you use an image on the section level, it is repeated for all rows.")
                Text("The images is set on this row, but it extends past the bounds. It also hidest he row below this one and goes under the previous row.")
                    .foregroundColor(.white)
                    .listRowBackground(Image("bs").resizable().clipped().blur(radius: 3))
                Text("This row cannot be seen if we use a larger image or remove the .resizable modifier")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (9.7-inch)")
    }
}

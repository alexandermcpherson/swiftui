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
        VStack(spacing: 10) {
            Text("Geometry Reader").font(.largeTitle)
            Text("Getting Coordinates").foregroundColor(.gray)
            Text("Getting the coordinates (x, y) of a geometry view is little different. Take a look at this example:")

            GeometryReader { geometry in
                VStack(spacing:10) {
                    Text("X: \(geometry.frame(in: .local).origin.x)")
                    Text("Y: \(geometry.frame(in: .local).origin.y)")
                }
                .foregroundColor(.white)
            }
            .background(Color.pink)

            Text("The local coordinate space will always give you zeros.")
            Text("You need to look globally to get the coordinates inside the current view:")

            GeometryReader { geomtry in
                VStack(spacing:10) {
                    Text("X: \(geomtry.frame(in: .global).origin.x)")
                    Text("Y: \(geomtry.frame(in: .global).origin.y)")
                }
                .foregroundColor(.white)
            }
            .background(Color.pink)
            .frame(height: 200)

        }
        .font(.title)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (9.7-inch)")
    }
}

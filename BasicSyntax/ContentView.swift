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
        VStack(spacing: 20) {
            Text("Button")
                .font(.largeTitle)
            Text("With Borders")
                .font(.title)
                .foregroundColor(.gray)
            Text("Apply borders can add a nice effect to your buttons. Here are some options.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)

            Button(action: {}) {
                Text("Square Border Button")
                .padding()
                .border(Color.purple)
            }

            Button(action:{}) {
                Text("Rounded border Button")
                .padding()
                .border(Color.purple)
                .cornerRadius(10)
            }

            Text("Look what happened when I tried to add a corner radius to the border. It is clipping the corners. Here is a different way you can accomplist this:")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)
                .font(.title)

            Button(action: {}) {
                Text("Border Button")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.purple, lineWidth: 2))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

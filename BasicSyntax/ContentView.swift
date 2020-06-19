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
        VStack(spacing:20) {
            Text("Button").font(.largeTitle)
            Text("With Images").font(.title).foregroundColor(.gray)
            Text("Button work fine with the SF Symbols. But what if you wanted to use a photo? Look what happens")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)

            Button(action: {}) {
                Image("kb").cornerRadius(40)
            }

            Text("This is because the image rendering mode is set to \"templates\" by default. This means all non-transparent areas will use the accent color. You need to change the rendering mode to fix this.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)

            Button(action: {}) {
                Image("kb")
                    // Change rendering mode to original
                    .renderingMode(.original)
                    .cornerRadius(40)
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

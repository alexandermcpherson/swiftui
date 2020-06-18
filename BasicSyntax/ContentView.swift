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
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("If you just want to show the default text style in a button then you can pass a string as the first parameter")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
            
            Button("Default Button Style") {}

            Text("You can customize the text shown for a button")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)

            Button(action: {
                // Button action code here
                print("Alex")
            }) {
                Text("Headline Font")
                    .font(.headline)
            }

            Divider()

            Button(action: {}) {
                Text("Foreground Color").foregroundColor(.red)
            }

            Divider()

            Button(action: {}) {
                Text("Thin font weight").fontWeight(.thin)
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

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
            Text("Text Composition")
                .foregroundColor(.gray)
            Text("You can add more than one text view to a button. By default, the views are composed within an HStack")
                .frame(maxWidth:.infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)

            Button(action: {}, label: {
                Text("Forgot Password")
                Text("Tap to Recover").foregroundColor(.orange)
            })

            Text("User a VStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)

            Button(action: {}, label: {
                VStack {
                    Text("New User")
                    Text("Register Here")
                        .font(.body)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

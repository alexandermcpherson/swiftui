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
            Section {
                Text("This is a form!").font(.title)
                Text("You can put any content in here")
                Text("The cells will grow to fit the content")
                Text("Remeber, its just views inside of views")
            }

            Section {
                Text("Limitations").font(.title)
                Text("There are built-in margin that are difficult to get around. Take a look at the color below so you can see where the margins are:")
                Color.purple
            }

            Section {
                Text("Summary").font(.title)
                Text("Pretty much what you see here is what you get.")
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

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
            Section(header: Text("Form").font(.largeTitle)) {
                Text("List row background")
                    .foregroundColor(.gray)

                Text("Forms and lists allow you to set a background view with a function called \"listRowBackground(view:)\".").fixedSize(horizontal: false, vertical: true)
                // Using fixed size is another way to stop text truncating

                Text("You can call this function modifier function on just one row, like this")
                    .listRowBackground(Color.purple)
                    .foregroundColor(.white)
            }

            Section(header: Text("Whole Section").font(.title).foregroundColor(.gray)) {
                Text("Or you can set a view or colour for a whole section")
                Image(systemName: "smiley.fill")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.largeTitle)
                Text("Note that even though the colour is set to the section, the colour of the seciton header is not affected").fixedSize(horizontal: false, vertical: true)

            }
            .foregroundColor(.white)
            .listRowBackground(Color.purple)
        }
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (9.7-inch)")
    }
}

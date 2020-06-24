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
                Text("List Row Background")
                    .foregroundColor(.gray)
                Text("Forms and Lists allow you to set a background view with a function called \"listRowBackground(view:)\".")
                    .fixedSize(horizontal: false, vertical:  true) // Using fixed size is another way to get text not to truncate.
                Text("You can call this modifier function on just on row, like hits.")
                    .listRowBackground(Color.purple)
                    .foregroundColor(.white)
            }

            Section(header: Text("Whole Section")
                .foregroundColor(.gray)) {
                Text("Or you can set a view or color for a whole section.")

                Image(systemName: "smiley.fill")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.largeTitle)

                    Text("Note, even though the color is set on the Section, the color of the section header is not effected").fixedSize(horizontal: false, vertical: true)
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

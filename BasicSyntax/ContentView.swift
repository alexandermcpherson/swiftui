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
            Section(header: Text("Section Header Text")) {
                Text("You can add any view in a section header")
                Text("Notice the default foreground is gray")
            }
            Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")) {
                Text("Here is an example of a section header with image and text")
            }
            Section(header: Text(""), footer: Text("Total: $5,600.00").bold()) {
                Text("Here is an example of section footer")
            }
        }
    }
}

struct SectionTextAndImage: View {

    var name: String
    var image: String

    var body: some View {
        HStack {
            Image(systemName: image)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (9.7-inch)")
    }
}

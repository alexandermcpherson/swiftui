//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var dateInForm = Date()

    var body: some View {
        Form {
            Section(header:Text("DatePicker").font(.largeTitle).padding())
            {
                Text("Used in forms").font(.title)
                    .foregroundColor(.gray)
                    .padding()

                Text("The date picker looks different when used in a form. The first parameter called 'title' is used when in forms and lists.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .listRowBackground(Color.yellow)
                    .font(.title)

                DatePicker("DatePicker collapsed (Default)", selection: $dateInForm, displayedComponents: .date)

                DatePicker("DatePicker Expanded (Selected)", selection: $dateInForm, displayedComponents: .date)
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

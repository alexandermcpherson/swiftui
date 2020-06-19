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
            Text("Button With Symbol").font(.largeTitle)
            Text("With SF Symbols").foregroundColor(.gray).font(.title)
            Text("Buttons can be composed with SF symbols too")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)

            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                Text("Search")
                    .padding(.horizontal)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(8)

            Button(action: {}) {
                VStack {
                    Image(systemName: "video.fill")
                    Text("Record").padding(.horizontal)
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(.infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

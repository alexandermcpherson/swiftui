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
        ZStack {
            VStack(spacing: 40) {
                Text("Button").font(.largeTitle)
                Text("Floating").font(.title).foregroundColor(.gray)
                Text("You can also create floating buttons by using a ZStack so the button is on the top layer, over everything else")
                    .frame(maxWidth:.infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
                Spacer()
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                    .padding(20)
                    .foregroundColor(Color.white)
                    .background(Color.purple)
                    .cornerRadius(.infinity)
                }
                .padding(.trailing, 30)
            }
            .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

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
            Text("GeometryReader").font(.largeTitle)
            Text("Min Mid Max").foregroundColor(.gray)
            Text("You can also get the minimum (min), middle (mid), and maximum (max) X and Y coordinate from the geometry reader.")
                .layoutPriority(1)

            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 20) {
                    Text("Local Coordinate Space")
                    HStack(spacing: 10) {
                        Text("MinX: \(Int(geometry.frame(in: .local).minX))")
                        Spacer()
                        Text("MidX: \(Int(geometry.frame(in: .local).midX))")
                        Spacer()
                        Text("MaxX: \(Int(geometry.frame(in: .local).maxX))")
                    }
                    Text("Global Coordinate Space")
                    HStack(spacing: 10) {
                        Text("MinX: \(Int(geometry.frame(in: .global).minX))")
                        Spacer()
                        Text("MidX: \(Int(geometry.frame(in: .global).midX))")
                        Spacer()
                        Text("MaxX: \(Int(geometry.frame(in: .global).maxX))")
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 200)
            .foregroundColor(.white)
            .background(Color.pink)

            HStack {
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Text("MinX: \(Int(geometry.frame(in: .global).minX))")
                        Spacer()
                        Text("MidX: \(Int(geometry.frame(in: .global).midX))")
                        Spacer()
                        Text("MaxX: \(Int(geometry.frame(in: .global).maxX))")
                    }
                    .padding(.vertical)
                }
                .foregroundColor(.white)
                .background(Color.pink)

                Image("kb")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }

            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("geometry.safeAreaInsets.leading: \(geometry.safeAreaInsets.leading)")
                    Text("geometry.safeAreaInsets.trailing: \(geometry.safeAreaInsets.trailing)")
                    Text("geometry.safeAreaInsets.top: \(geometry.safeAreaInsets.top)")
                    Text("geometry.safeAreaInsets.bottom: \(geometry.safeAreaInsets.bottom)")
                }
            }
            .foregroundColor(.white)
            .background(Color.pink)
        }
        .font(.title)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (11-inch)")
    }
}

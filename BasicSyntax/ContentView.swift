//
//  ContentView.swift
//  BasicSyntax
//
//  Created by Alex McPherson on 08/06/2020.
//  Copyright © 2020 WorldPay. All rights reserved.
//

import SwiftUI

class ResetPasswordModel: ObservableObject {
  @Published var email = ""
}

struct ContentView: View {

    @ObservedObject private var model = ResetPasswordModel()

    var body: some View {
        Form {
            Section {
                TextField("Email", text: $model.email)
                Button(action: {
                    print(self.model.email)
                }) {
                    Text("Press me")
                }
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

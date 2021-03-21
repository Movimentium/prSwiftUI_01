//
//  ContentView.swift
//  prSwiftUI_01
//
//  Created by Miguel on 21/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            HStack {
                Text("$")
                Text("TextFields")
            }
            .padding()
            HStack {
                Text("Slider")
                Text("%")
            }
            .padding()
            Text("Total tip")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

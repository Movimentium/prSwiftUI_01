//
//  ContentView.swift
//  prSwiftUI_01
//
//  Created by Miguel on 21/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var percent: Double = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.5)
            }
            .padding()
            HStack {
                Slider(value: $percent, in: 1...30, step: 1.0)
                Text("\(Int(percent))%")
            }
            .padding()
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * percent / 100, specifier: "%0.2f")")

            } else {
                Text("Please enter a valid numerical value.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

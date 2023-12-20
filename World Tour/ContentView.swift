//
//  ContentView.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI


struct ContentView: View {
    let phoneNumber = "tel://1234567890" // Replace with the desired phone number

    var body: some View {
        VStack {
            // Your other UI elements go here
            
            // Link to make a phone call
            Link("Call us", destination: URL(string: phoneNumber)!)
                .foregroundColor(.blue)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}

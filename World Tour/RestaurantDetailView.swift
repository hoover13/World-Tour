//
//  RestaurantDetailView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant
  
    
    
    var body: some View {
        ScrollView {
            VStack {
                Image(restaurant.imageName)
                    .resizable()
                    .frame(width: 300, height: 180)
                    .cornerRadius(20)
                
                Text(restaurant.name)
                
                Text(restaurant.location)
                
                Link("Call us", destination: URL(string: "tel://\(restaurant.phoneNumber)" )!)
                    .foregroundColor(.blue)
                    .padding()
                
                
            }
        }
    }
}

//#Preview {
//    RestaurantDetailView()
//}

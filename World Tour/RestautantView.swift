//
//  RestautantView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct RestautantView: View {
    @State var city: City
    var body: some View {
        
        List {
            ForEach(city.restaurants) { restaurant in
                NavigationLink {
                    RestaurantDetailView(restaurant: restaurant)
                } label: {
                    VStack {
                        Image(restaurant.imageName)
                            .resizable()
                            .frame(height: 200)
                            .cornerRadius(20)
                        Text(restaurant.name)
                            .font(.largeTitle)
                            .bold()
                    }
                    .padding()
                }

            }
        }
    }
}


//#Preview {
//    RestautantView()
//}

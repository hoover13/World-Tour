//
//  CategoryView.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI

struct CategoryView: View {
    var city: City
    
    var body: some View {
        
        TabView {
        
                PopularPlaceView(city: city)
                    .tabItem {
                Label("Places", systemImage: "photo")
                }

            
            RestautantView(city: city)
                .tabItem {
                    Label("Restaurants", systemImage: "fork.knife")
                }
            
            HotelView(city: city)
                .tabItem {
                    Label("Hotels", systemImage: "building.columns")
                }
            
            BusinessView()
                .tabItem {
                    Label("Businesses", systemImage: "network")
                }
        }
    }
}

//#Preview {
//    CategoryView(city: city)
//}

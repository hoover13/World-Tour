//
//  PopularPlaceDetailView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct PopularPlaceDetailView: View {
    var place: Place
    
    var body: some View {
        VStack {
            Image(place.imageName)
                .resizable()
                .frame(width: 300, height: 180)
                .cornerRadius(20)
            
            Text(place.name)
            
            Text(place.location)
            
            
        }
    }
}

//#Preview {
//    PopularPlaceDetailView()
//}

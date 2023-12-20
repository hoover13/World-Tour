//
//  HotelDetailView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct HotelDetailView: View {
    var hotel: Hotel
    
    var body: some View {
        VStack {
            Image(hotel.imageName)
                .resizable()
                .frame(width: 300, height: 180)
                .cornerRadius(20)
            
            Text(hotel.name)
            
            Text(hotel.location)
            
            
        }
    }
}

//#Preview {
//    HotelDetailView()
//}

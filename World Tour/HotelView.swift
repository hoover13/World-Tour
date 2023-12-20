//
//  HotelView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct HotelView: View {
    @State var city: City
    var body: some View {
        List {
            ForEach(city.hotels) { hotel in
                NavigationLink {
                    HotelDetailView(hotel: hotel)
                } label: {
                    VStack {
                        Image(hotel.imageName)
                            .resizable()
                            .frame(height: 200)
                            .cornerRadius(20)
                        Text(hotel.name)
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
//    HotelView()
//}

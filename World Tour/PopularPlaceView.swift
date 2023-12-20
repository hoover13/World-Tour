//
//  PopularPlaceView.swift
//  World Tour
//
//  Created by Min Thu Khine on 12/7/23.
//

import SwiftUI

struct PopularPlaceView: View {
    @State var city: City
    
    var body: some View {
        List {
            ForEach(city.places) { place in
                NavigationLink {
                    PopularPlaceDetailView(place: place)
                } label: {
                    VStack {
                        Image(place.imageName)
                            .resizable()
                            .frame(height: 200)
                            .cornerRadius(20)
                        Text(place.name)
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
//    PopularPlaceView(city: City())
//}

//
//  CityCard.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI

struct CityCard: View {
    var city: City
    
    var body: some View {
        
        ZStack {
            Image(city.imageName)
                .resizable()
                .cornerRadius(15)
            
//            Rectangle()
//                .foregroundColor(.black)
//                .opacity(0.5)
//                .cornerRadius(15)
            
            VStack() {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text(city.summary)
                    .bold()
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
}

//#Preview {
//    CityCard()
//}

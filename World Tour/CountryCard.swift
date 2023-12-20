//
//  CountryCard.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI

struct CountryCard: View {
    
    var country: Country
    
    var body: some View {
        
        ZStack {
            Image(country.imageName)
                .resizable()
                .cornerRadius(15)
            
//            Rectangle()
//                .foregroundColor(.black)
//                .opacity(0.5)
//                .cornerRadius(15)
            
            VStack() {
                Text(country.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text(country.summary)
                    .bold()
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
    
}

//#Preview {
//    CountryCard()
//}

//
//  CityView.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI

struct CityView: View {
    
    var country: Country
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    
                    ForEach(country.cities) { city in
                        NavigationLink {
                            CategoryView(city: city)
                        } label: {
                            CityCard(city: city)
                        }

                    }
                    .padding(.vertical)
                }
                .padding()
            }
        }
      
    }
}

//#Preview {
//    CityView()
//}

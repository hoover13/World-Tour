//
//  CountryView.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import SwiftUI

struct CountryView: View {
    
    @State var countries = [Country]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    
                    ForEach(countries) { country in
                        NavigationLink {
                            CityView(country: country)
                        } label: {
                            CountryCard(country: country)
                        }

                    }
                    .padding(.vertical)
                }
                .padding()
            }
        }
        .onAppear {
            countries = dataService.getData()
        }
    }
}

#Preview {
    CountryView()
}

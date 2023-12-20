//
//  Database.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//

import Foundation

struct Country: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var summary: String
    var cities: [City]

//    var places: [Place]
//    var restaurants: [Restaurant]
//    var hotels: [Hotel]
    
    
}


struct City: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var summary: String
    var places: [Place]
    var restaurants: [Restaurant]
    var hotels: [Hotel]
}


struct Category: Identifiable {
    
    let id = UUID()
    var places: [Place]
    var hotels: [Hotel]
    var restaurants: [Restaurant]
}

struct Place: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var details: String
    var location: String
    var phoneNumber: Int
    
}

struct Restaurant: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var details: String
    var location: String
    var phoneNumber: Int
    
}

struct Hotel: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var details: String
    var location: String
    var phoneNumber: Int
    
}






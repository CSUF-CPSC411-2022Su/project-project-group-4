//
//  City.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
import Combine

class City: ObservableObject{
        
    var name: String
    var longitude: Double
    var latitude: Double
    

    
    init() {
        self.name = "Los Angeles"
        self.longitude = 34.0522342
        self.latitude = -118.2436849

    }
    
    init(cityData data: CityValidation.CityData) {
        self.name = data.name
        self.longitude = data.geometry.location.longitude
        self.latitude = data.geometry.location.latitude

    }
    
}

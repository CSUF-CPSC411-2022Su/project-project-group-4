//
//  weather.swift
//  Forecast
//
//  Created by csuftitan on 6/13/22.
//

import Foundation
class Cityweather{
    var city: String
    var weather: Double
    var high,low : Double
    
    init(city: String, weather: Double, high: Double, low: Double)  {
        
    self.city = city
    self.weather = weather
    self.high = high
    self.low = low
   }
}

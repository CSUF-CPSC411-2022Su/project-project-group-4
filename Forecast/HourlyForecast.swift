//
//  HourlyForecast.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
struct HourlyForecast: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var temperature: Double
    var icon: Forecast.Icon
    
}

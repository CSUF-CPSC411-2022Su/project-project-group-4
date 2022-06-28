//
//  Forecast.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
struct Forecast: Codable {
    
    var current: HourlyForecast
    var hours: Forecast.List<HourlyForecast>
    var week: Forecast.List<DailyForecast>
    
    enum CodingKeys: String, CodingKey {
        
        case current = "currently"
        case hours = "hourly"
        case week = "daily"
        
    }
    
}
extension Forecast {
    
    struct List<T: Codable & Identifiable>: Codable {
        
        var list: [T]
        
        enum CodingKeys: String, CodingKey {
            
            case list = "data"
            
        }
        
    }
    
}

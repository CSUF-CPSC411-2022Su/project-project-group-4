//
//  CityForecastView.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI

struct CityView : View {
    
    @ObservedObject var city = City(name: "Fullerton")
    
    var body: some View {
        List {
            Section(header: Text("Now")) {
                CityHeadView(city: city)
            }
            
            Section(header: Text("Hourly")) {
                CityHourlyView(city: city)
            }
            
            Section(header: Text("This week")) {
                ForEach(city.weather?.week.list ?? []) { day in
                    CityDailyView(day: day)
                }
            }
        }
            .navigationBarTitle(Text(city.name))
    }
    
}

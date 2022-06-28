//
//  CityWeatherView.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import SwiftUI

struct CityWeatherView : View {
    
    @ObservedObject var city: City
    
    var body: some View {
         {
           Text(" City Weather ")
         }()
        .navigationBarTitle(Text(city.name))
    }
    
}

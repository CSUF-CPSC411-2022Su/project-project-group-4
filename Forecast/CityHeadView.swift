//
//  CityHeadView.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
struct CityHeadView: View {
    
     var city: City
    
    var temperature: String {
        guard let temperature = city.weather?.current.temperature else {
            return "-ºF"
        }
        return temperature.formatted()
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center, spacing: 16) {
                city.weather?.current.icon.image
                    .font(.largeTitle)
                Text(temperature)
                    .font(.largeTitle)
            }
            Spacer()
        }
            .frame(height: 110)
    }
    
}


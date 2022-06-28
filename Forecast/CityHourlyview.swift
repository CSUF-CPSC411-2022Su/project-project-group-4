//
//  CityHourlyview.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
struct CityHourlyView : View {
    
     var city: City
    
    private let rowHeight: CGFloat = 110
    
    var body: some View {
        ScrollView {
            HStack(spacing: 16) {
                ForEach(city.weather?.hours.list ?? []) { hour in
                    VStack(spacing: 16) {
                        Text(hour.time.formatted)
                            .font(.footnote)
                        hour.icon.image
                            .font(body)
                        Text(hour.temperature.formattedTemperature)
                            .font(.headline)
                    }
                }
            }
                .frame(height: rowHeight)
                .padding(.trailing)
        }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .frame(height: rowHeight)
    }
    
}

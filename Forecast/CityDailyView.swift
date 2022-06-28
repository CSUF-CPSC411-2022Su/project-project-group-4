//
//  CityDailyView.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
struct CityDailyView : View {
     var day: DailyForecast
     var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Text(day.time.formatted)
                Spacer()
                HStack(spacing: 16) {
                    verticalTemperatureView(min: true)
                    verticalTemperatureView(min: false)
                }
            }
            HStack(alignment: .center) {
                Spacer()
                day.icon.image
                    .font(.largeTitle)
                Spacer()
            }
        }
    }

    func verticalTemperatureView(min: Bool) -> some View {
        VStack(alignment: .trailing) {
            Text(min ? "min" : "max")
                .font(.footnote)
                .color(.gray)
            Text(min ? day.minTemperature.formattedTemperature : day.maxTemperature.formattedTemperature)
                .font(.headline)
        }
    }
}


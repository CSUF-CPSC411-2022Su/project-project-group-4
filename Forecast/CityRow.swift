//
//  CityRow.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI

struct CityRow : View {
    
    @ObservedObject var city: City
    
    var body: some View {
        NavigationLink(destination: CityWeatherView(city: city)) {
            HStack(alignment: .firstTextBaseline) {
                Text(city.name).font(.title)
                Spacer()
            }.padding()
        }
    }
    
}

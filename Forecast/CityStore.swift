//
//  CityStore.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
import Combine

class CityStore: ObservableObject {
        
    @Published var cities: [City] = [City()]
    
}

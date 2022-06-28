//
//  city.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI
import Combine

class City: ObservableObject {
    
    var didChange = PassthroughSubject<City, Never>()
    
    let name: String
    var weather: Forecast? {
        didSet {
            didChange.send(self)
        }
    }
    
    init(name: String) {
        self.name = name
        self.getForecast()
    }
    
    private func getForecast() {
        guard let url = URL(string: ForecastManager.baseURL + "45.572353,5.915807?units=ca&lang=fr") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .secondsSince1970
                
                let weatherObject = try decoder.decode(Forecast.self, from: data)
                
                DispatchQueue.main.async {
                    self.weather = weatherObject
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

//
//  NetworkManager.swift
//  Forecast
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import UIKit

class NetworkManager: NSObject {
    
    struct Key {

        static let googleMaps: String = "AIzaSyDyw2X7ZeyKlUIpEa5Ewxl8fbi1pEzvI1A"
        
    }
    
    struct APIURL {
        
        static func cityCompletion(for search: String) -> String {
            return "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=\(search)&types=(cities)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        
        static func cityData(for placeID: String) ->  String {
            return "https://maps.googleapis.com/maps/api/place/details/json?placeid=\(placeID)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
                
    }
        
}

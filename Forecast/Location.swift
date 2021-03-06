//
//  Location.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/11/22.
//

import Foundation
import CoreLocation
//location manager 
class LocationManager: NSObject,ObservableObject,  CLLocationManagerDelegate{
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    
    func requesstLocation(){
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location Error", error)
        isLoading = false
    }
    
}

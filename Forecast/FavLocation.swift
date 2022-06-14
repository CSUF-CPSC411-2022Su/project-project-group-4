//
//  FavLocation.swift
//  Forecast
//
//  Created by csuftitan on 6/13/22.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate{
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    func requesstLocation(){
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location Error", error)
    }
    
}
class FavLocation: LocationManager {
    var locationname: String
    var locationtemp: String
    
    init(locationname: String, locationtemp: String)
    {
        self.locationname = locationname
        self.locationtemp = locationtemp
    }
}


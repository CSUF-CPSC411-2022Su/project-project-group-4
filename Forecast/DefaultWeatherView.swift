//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import CoreLocationUI
import SwiftUI

struct DefaultWeatherView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?

    var body: some View {
        VStack {
            VStack {
                Text("Welcome to ForeCast").bold().font(.title)
                Text("Please share your current location").padding()
                LocationButton(.shareCurrentLocation) {
                    locationManager.requesstLocation()
                }
                .foregroundColor(.white)
                if let location = locationManager.location {
                    Text("Your Coordinate are:\(location.longitude),\(location.latitude)")
                
                }
                    
            }
        }
    }
}

struct DefaultWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultWeatherView()
    }
}

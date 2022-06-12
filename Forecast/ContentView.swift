//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    var locationManager = LocationManager()
    
    var body: some View {
        VStack{
            LocationButton(.shareCurrentLocation){
                locationManager.requesstLocation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

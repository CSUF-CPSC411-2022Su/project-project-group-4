//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import CoreLocationUI
import SwiftUI

struct welcomeView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?

    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()

            VStack {
                Image("weatherPic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)

                VStack {
                    Text("Welcome to ForeCast").bold().font(.title)
                    Text("Please share your current location").padding()
                    LocationButton(.shareCurrentLocation) {
                        locationManager.requesstLocation()
                    }
                    .foregroundColor(.white)
                }
                .padding()
            }
        }
    }

    struct welcomeView_Previews: PreviewProvider {
        static var previews: some View {
            welcomeView()
        }
    }
}

let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.white],
    startPoint: .top, endPoint: .bottom)

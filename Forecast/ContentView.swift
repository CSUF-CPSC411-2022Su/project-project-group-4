//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI

class NecessaryFeatures{
    var WindSpeed: Int
    var Humidity: Int
    var UvIndex: String
    
    init(){
        self.WindSpeed = 100
        self.Humidity = 94
        self.UvIndex = "Low"
    }
}

struct ContentView: View {
    var x = NecessaryFeatures()
    var body: some View {
        
        Text("Welcome to our app Forecast!!!")
            .padding()
        Text("Wind Speed = \(x.WindSpeed)mph 🌪")
        Text("Humidity = \(x.Humidity)% 🌧")
        Text("Uv Index = \(x.UvIndex) ☀️")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


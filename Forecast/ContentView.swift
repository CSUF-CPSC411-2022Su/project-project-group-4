//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//    feature3View()
        NavigationLink(destination: feature3View()) {
                                Text("CLick here for Humidity, Uv Index and Windspeed report")
                            }

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


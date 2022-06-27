//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                welcomeView()
                    .tabItem {
                        Image(systemName: "location")
                        Text("Welcome")
                            .bold()
                    }

                weatherView()
                    .tabItem {
                        Image(systemName: "location")
                        Text("Weather")
                            .bold()
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

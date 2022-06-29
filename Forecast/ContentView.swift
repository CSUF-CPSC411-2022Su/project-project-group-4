//
//  ContentView.swift
//  Forecast
//
//  Created by Sumit Bishnoi on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("sizeMultiplier") var sizeMultiplier = 1.0
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
                        Image(systemName: "sun.max.fill")
                        Text("Weather")
                            .bold()
                    }
                    
                feature3View()
                    .tabItem {
                        Image(systemName: "wind")
                        Text("More Reports")
                            .bold()
                    }
                    
                Settings()
                    .tabItem {
                        Image(systemName: "wrench")
                        Text("Size")
                    }
            }
            
        }.font(.custom("Arial", size: CGFloat(18 * sizeMultiplier)))
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  WeatherView.swift
//  Forecast
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Spacer()
            Text("Fullerton")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color(hue: 0.075, saturation: 0.94, brightness: 0.942))
                    .font(.largeTitle)
                Text("85º F")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                
            }
            Text("Sunny")
                .font(.body)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
            Text("H:88º  L:50º")
                .foregroundColor(Color.black)
            Spacer()
            
            
            
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

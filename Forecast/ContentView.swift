//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI

struct ContentView: View {
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
                    .foregroundColor(Color.orange)
                
            }
            Text("Sunny")
                .font(.body)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Text("H:88º  L:50º")
                .foregroundColor(Color.orange)
            Spacer()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

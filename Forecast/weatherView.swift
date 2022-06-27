//
//  weatherView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/27/22.
//

import SwiftUI
//I couldn't get the API to work properly
struct weatherView: View {
    var body: some View {
        VStack {
            backgroundGradient
                .ignoresSafeArea()
            Text("Fullerton")
                .font(.largeTitle)
                .padding()
            Text("85°F")
                .font(.system(size: 80))
                .bold()
            Image("sun")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding()
        }
    }
}

struct weatherView_Previews: PreviewProvider {
    static var previews: some View {
        weatherView()
    }
}

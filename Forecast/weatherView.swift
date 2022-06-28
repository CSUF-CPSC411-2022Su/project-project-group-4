//
//  weatherView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/27/22.
//

import SwiftUI
// I couldn't get the API to work properly.
struct weatherView: View {
    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack {
                Text("Fullerton")
                    .font(.largeTitle)

                Text("85°F")
                    .font(.system(size: 80))
                    .bold()
                Text("Highest: 91°F    Lowest: 65°F")
                    .bold()
                Image("sun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding()
            }
        }
    }
}

struct weatherView_Previews: PreviewProvider {
    static var previews: some View {
        weatherView()
    }
}

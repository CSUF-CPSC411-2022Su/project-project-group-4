//
//  LocationView.swift
//  Forecast
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI

struct LocationView: View {
    let locations = LocationList
    @State var isPresentingModal: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id: \.self) { location in
                    NavigationLink(destination: WeatherView()) {
                        Text(location)
                    }.padding()
                }
                .navigationTitle("Favorite Locations")
            }
        }
    }
    private var addButton: some View {
        Button(action: {
            self.isPresentingModal = true
        }) {
            Image(systemName: "plus.circle.fill")
            .font(.title)
        }

    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}

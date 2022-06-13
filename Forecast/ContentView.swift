//
//  ContentView.swift
//  Forecast
//
//  Created by Guanlin Wang on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var locationname: String = ""
    @State var locationtemp: String = ""
    var body: some View {
        VStack {
            Text("Favorite Locations")
            GeometryReader { geometry in
                VStack {
                        HStack {
                            Spacer()
                            TextField("Zurich, Switzerland", text: $locationname).font(.body)
                            TextField("\t\t\t5° C", text: $locationtemp).font(.title2)
                            Image(systemName: "star.fill")
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            TextField("Nice, France", text: $locationname).font(.body)
                            TextField("\t\t\t12° C", text: $locationtemp).font(.title2)
                            Image(systemName: "star.fill")
                            Spacer()
                        }
                    }.frame(height: geometry.size.height / 10)
                    Spacer()
               
        }
            Button {
                print("Search for Favorites")
            } label: {
                Text("Add Favorites")
                    .padding(15)
            }
            .contentShape(Rectangle())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  CitySearchView.swift
//  Forecast
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

struct CitySearchView : View {
    
    @State private var search: String = ""
    @State private var isValidating: Bool = false

    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Search City", text: $search)
                }
                
                Section {
                        Button(action: {

                        }) {
                            Text("Add City")
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
                .disabled(isValidating)
                .navigationBarTitle(Text("Add City"))
                .navigationBarItems(leading: cancelButton)
                .listStyle(GroupedListStyle())
    }
}
private var cancelButton: some View {
    Button(action: {
      
    }) {
        Text("Back")
    }
}

struct CitySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CitySearchView()
    }
}

//
//  ContentView.swift
//  Forecast
//
//  Created by Sumit Bishnoi on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("bgRed") var bgRed: Double = 0
    @AppStorage("bgGreen") var bgGreen: Double = 0
    @AppStorage("bgBlue") var bgBlue: Double = 0

    var body: some View {
        
            
            VStack{
                
                TabView {
                    
                     
                    Text("Welcome Page \n Click on More Report tab to see features")
                        .multilineTextAlignment(.center)
                        .tabItem {
                            Image(systemName: "location")
                            Text("Welcome")
                                .bold()
                        }
                    
                    feature3View()
                        .tabItem {
                            Image(systemName: "wind")
                            Text("More Reports")
                                .bold()
                        }
                    
                    Background()
                       .tabItem{
                           Image(systemName: "wrench")
                           Text("Settings")
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


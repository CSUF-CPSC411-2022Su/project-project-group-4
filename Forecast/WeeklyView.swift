//
//  WeeklyView.swift
//  Forecast
//
//  Created by csuftitan on 6/20/22.
//

import Foundation
import SwiftUI
struct WeeklyView: View {
    var body: some View {
        VStack{
            List{
                Text("6 AM")
                Text("7 AM")
                Text("8 AM")
                Text("9 AM")
                Text("10 AM")
                Text("11 AM")
                Text("12 PM")
                Text("1 PM")
                Text("2 PM")
                Text("3 PM")
                }
        }
    }
}

    
struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
    }
}


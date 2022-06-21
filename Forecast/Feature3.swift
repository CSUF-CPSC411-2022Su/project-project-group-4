//
//  Feature3.swift
//  Forecast
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

struct feature3View: View{
    var x = NecessaryFeatures()
    var body: some View {
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            
            VStack {
                Text("Weather Reports")
                    .modifier(HeadingText())
                    .padding()
                Image("wind.png")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25.0, height: 25.0)
                    VStack{
                        Spacer()
                        HStack{
                            VStack{
                            Image("wind")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25.0, height: 25.0)
                            }
                            VStack(spacing:1){
                    Text("Wind Speed = \(x.WindSpeed)mph 🌪")
                            .bold()
                            }
                            
                        }.modifier(BackForWind())
                    VStack{
                    Text("Humidity = \(x.Humidity)% 🌧")
                            .bold()
                    }.modifier(BackForHum())
                    VStack{
                    Text("Uv Index = \(x.UvIndex) ☀️")
                            .bold()
                    }.modifier(BackForUV())
                }
            
            
        }
        }}
}


struct HeadingText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading,1)
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.teal)
            .cornerRadius(10)
    }
}
let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.white],
    startPoint: .top, endPoint: .bottom)

struct BackForWind: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .font(.custom("Courier New", size: 25))
            .padding()
            .background(Color.red)
            .cornerRadius(65)
            .padding()
    }
}
struct BackForUV: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .font(.custom("Courier New", size: 25))
            .padding()
            .background(Color.yellow)
            .cornerRadius(65)
            .padding()
    }
}
struct BackForHum: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .font(.custom("Courier New", size: 25))
            .padding()
            .background(Color.yellow)
            .cornerRadius(65)
            .padding()
    }
}

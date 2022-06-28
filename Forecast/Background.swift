//
//  Background.swift
//  Forecast
//
//  Created by Sumit Bishnoi on 6/27/22.
//

import SwiftUI

struct Background: View {
    @AppStorage("bgRed") private var bgRed: Double = 0
    @AppStorage("bgGreen") var bgGreen: Double = 0
    @AppStorage("bgBlue") var bgBlue: Double = 0
    var body: some View {
        ZStack{
            
            backgroundGradient
                .ignoresSafeArea()
        
        VStack {
            HStack {
                
                Text("Select color for Background")
                    .foregroundColor(Color.white)
                    .bold()
                Spacer()
            }.padding()
                .padding()
            
            HStack{
                Text("1. Select color from below for top gradient effect.")
                    .foregroundColor(Color.white)
            }
            HStack{
                HStack{
                    Button(action: {
                        bgRed = 255;
                        bgGreen = 0;
                    bgBlue = 0
                        
                    })
                    {
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    }
                Spacer()
                Rectangle()
                    .fill(.black)
                    .frame(width: 3, height: 60)
                    Spacer()
                }
                
                HStack{
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                   Spacer()
                Rectangle()
                    .fill(.black)
                    .frame(width: 3, height: 60)
                    Spacer()
                }
                
                HStack{
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 50, height: 50)
                
                Spacer()
                Rectangle()
                    .fill(.black)
                    .frame(width: 3, height: 60)
                    Spacer()
                }
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                    
            }
            .modifier(featureBlock())
            .padding()
            Spacer()
            Text("\(bgRed)")
            Text("\(bgBlue)")
        }.font(.custom("Arial", size: CGFloat(18)))
    }
    }
}

var bgRed: Double = 0
var bgGreen: Double = 0
var bgBlue: Double = 255

let backgroundGradient = LinearGradient(
    colors: [
        Color(red: 1 * bgRed, green: 1*bgGreen, blue: 1*bgBlue),
        Color.white
    ],
    startPoint: .top, endPoint: .bottom)

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}



//
//  Feature3.swift
//  Forecast
//
//  Created by Sumit Bishnoi on 6/20/22.
//

import SwiftUI

struct feature3View: View{
    var x = NecessaryFeatures()
    @AppStorage("sizeMultiplier") var sizeMultiplier = 1.0
    
    var body: some View {
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
        
        VStack {
            
         
            VStack {
                HStack{
                    Spacer()
                Rectangle()
                    .fill(.black)
                    .frame(width: 5, height: 100)
                    .opacity(0.5)
                    
                
                Text("Weather Details for this location")
                        .padding(.leading,1)
                        .font(.custom("Courier New", size: 30))
                        .foregroundColor(.white)
                        .padding()
                    
                }.padding()
                Spacer()

            }

            VStack{
            HStack{
                Spacer()
                VStack {
                    
                    Text("Sunrise")
                            .bold()
                            .shadow(radius: 2)
                    Image("morning")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .shadow(radius: 2)
                
                Text( "AM")
                    .bold()
                    .shadow(radius: 2)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                Rectangle()
                    .fill(.blue)
                    .frame(width: 1, height: 100)
                    .opacity(0.5)
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    Text("Sunset")
                            .bold()
                            .shadow(radius: 2)
                    Image("sea")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .shadow(radius: 2)
                
                Text( "PM")
                    .bold()
                    .shadow(radius: 2)
                    Spacer()
                }
                Spacer()
            }.modifier(featureBlock2())
                
            // Feature 3
                Spacer()
            HStack(spacing:1){
                Spacer()
                            VStack {
                                Spacer()
                                Image("wind")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 2)
                            Text("Wind")
                                    .bold()
                                    .shadow(radius: 2)
                            Text( "\(x.WindSpeed)Mph")
                                .bold()
                                .multilineTextAlignment(.center)
                                .shadow(radius: 2)
                                Spacer()
                            }
                            
                            HStack{
                                Spacer()
                            Rectangle()
                                .fill(.blue)
                                .frame(width: 1, height: 100)
                                .opacity(0.5)
                                Spacer()
                                
                            }
                            VStack {
                                Image("humidity")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 2)
                                    
                                Text("Humidity")
                                Text("\(bgRed)")
                                Text("\(bgBlue)")
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: 2)
                            Text( "\(x.Humidity)% ")
                                    .bold()
                                    .shadow(radius: 2)
                                Spacer()
                            }
                            
                            HStack{
                                Spacer()
                            Rectangle()
                                .fill(.blue)
                                .frame(width: 1, height: 100)
                                .opacity(0.5)
                                Spacer()
                            }
                            
                            VStack {
                                Image("sun")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 2)
                                    
                                Text("UV")
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: 2)
                                Text("Index")
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: 2)
                            Text( "\(x.UvIndex)")
                                    .bold()
                                    .shadow(radius: 2)
                                Spacer()
                            }
                Spacer()
                    }.modifier(featureBlock())
//                Text("Red:\(bgRed)")
            
        }
        }.font(.custom("Arial", size: CGFloat(19 * sizeMultiplier)))
            
        }
    }
}


struct featureBlock: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .font(.custom("Courier New", size: 15))
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
    }
}

struct featureBlock2: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .font(.custom("Courier New", size: 15))
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
    }
}

var bgRed: Double = 0
var bgGreen: Double = 0
var bgBlue: Double = 255

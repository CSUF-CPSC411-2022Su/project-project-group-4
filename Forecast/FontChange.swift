//
//  FontChange.swift
//  Forecast
//
//  Created by csuftitan on 6/28/22.
//

import SwiftUI

struct Settings: View {
    @AppStorage("sizeMultiplier") var sizeMultiplier = 1.0
    var body: some View {
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
        VStack {
            
            HStack {
                Text("Size multiplier")
                    .foregroundColor(Color.white)
                    .bold()
                Spacer()
            }.padding()
            HStack {
                Button(action: {
                    sizeMultiplier = 1
                }) {
                    Text("Small")
                        .modifier(ButtonDesign())
                }
                Button(action: {
                    sizeMultiplier = 1.3
                }) {
                    Text("Medium")
                        .modifier(ButtonDesign())
                }
                Button(action: {
                    sizeMultiplier = 1.5
                }) {
                    Text("Large")
                        .modifier(ButtonDesign())
                }
            }.padding()
            Spacer()
        }
        .font(.custom("Arial", size: CGFloat(18 * sizeMultiplier)))
    }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.yellow)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

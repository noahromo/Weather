//
//  WeatherButton.swift
//  Weather
//
//  Created by Noah Romo on 10/13/21.
//

import SwiftUI

//If a view I have refactored is going to be used all throughout the app, put it into its own file
//But if a view is unique and specific to the screen it is on and I refactored it to make the screen more readable, then keep in same file

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50) //Default apple button
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10) //Tons of modifiers, but group of them that are very common
    }
}

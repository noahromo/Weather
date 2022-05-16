//
//  WeatherView.swift
//  Weather
//
//  Created by Noah Romo on 4/20/21.
//

import SwiftUI

struct WeatherView: View {
    
    @State private var isNight = false // State property wrapper is for allowing a struct to hold a state
    var city: City
    
    var body: some View {
        ZStack { // 10 views max before Xcode stops you (Nested stuff doesn't count)
            BackgroundView(isNight: $isNight) // Passing a binding to isNight, $ makes it binding
            VStack {
                CityTextView(cityName: city.cityName)
                
                MainWeatherStatusView(imageName: isNight ? city.currentImageNameNight : city.currentImageNameDay, temperature: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: city.cityForcast[0].dayOfWeek, // Turn into passable data model!!!
                                   imageName: isNight ? city.cityForcast[0].imageNameNight : city.cityForcast[0].imageNameDay,
                                   temperature: isNight ? city.cityForcast[0].temperatureNight : city.cityForcast[0].temperatureDay)
                    
                    WeatherDayView(dayOfWeek: city.cityForcast[1].dayOfWeek, // Turn into passable data model!!!
                                   imageName: isNight ? city.cityForcast[1].imageNameNight : city.cityForcast[1].imageNameDay,
                                   temperature: isNight ? city.cityForcast[1].temperatureNight : city.cityForcast[1].temperatureDay)
                    
                    WeatherDayView(dayOfWeek: city.cityForcast[2].dayOfWeek, // Turn into passable data model!!!
                                   imageName: isNight ? city.cityForcast[2].imageNameNight : city.cityForcast[2].imageNameDay,
                                   temperature: isNight ? city.cityForcast[2].temperatureNight : city.cityForcast[2].temperatureDay)
                    
                    WeatherDayView(dayOfWeek: city.cityForcast[3].dayOfWeek, // Turn into passable data model!!!
                                   imageName: isNight ? city.cityForcast[3].imageNameNight : city.cityForcast[3].imageNameDay,
                                   temperature: isNight ? city.cityForcast[3].temperatureNight : city.cityForcast[3].temperatureDay)
                    
                    WeatherDayView(dayOfWeek: city.cityForcast[4].dayOfWeek, // Turn into passable data model!!!
                                   imageName: isNight ? city.cityForcast[4].imageNameNight : city.cityForcast[4].imageNameDay,
                                   temperature: isNight ? city.cityForcast[4].temperatureNight : city.cityForcast[4].temperatureDay)
                }
                
                Spacer() // A spacer is a view, can easily overuse them
                
                Button { // First section here is the action
                    isNight.toggle() // Now when you tap the button it is going to jump from T to F (UI watches)
                } label: { // Second section is what the button looks like
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer() // Solution to limit is to refactor views
            }
            .offset(y: -80) // Current solution to issue with navigationbar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(city: Cities.bigCities.first!)
    }
}

// Working on drop down feature
struct DropDownView: View {
    
    var body: some View {
        VStack {
            HStack {
                
            }
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            // The order of your modifiers matter because your modifiers are wrapping your existing view in another view
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) { // Can use parameter of a VStack to fix spacing between the stack's elements
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

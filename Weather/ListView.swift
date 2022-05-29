//
//  ListView.swift
//  Weather
//
//  Created by Noah Romo on 5/14/22.
//
//  To-do:
//  1. Feature Ideas:
//     a. Set up next 5 days of weather based on current day
//     b. Create a network call from a basic weather api

import SwiftUI

struct ListView: View {
    
    var cities: [City] = Cities.bigCities
    
    init () {
        UITableView.appearance().backgroundColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))), .font: UIFont.boldSystemFont(ofSize: 48)]
    }
    
    var body: some View {
        NavigationView { // Will use later to connect to pages
            List {
                ForEach(cities, id: \.id) { city in
                    NavigationLink(destination: WeatherView(city: city), label: {
                        ZStack {
                            HStack() {
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(city.currentTime)
                                        .font(.system(size: 16, weight: .medium, design: .default))
                                        .foregroundColor(.white)
                                    Text(city.cityName)
                                        .font(.system(size: 32, weight: .medium, design: .default))
                                        .foregroundColor(.white)
                                }
                                
                                Spacer()
                                
                                Text("\(city.currentTemperatureDay)°")
                                    .font(.system(size: 50, weight: .medium))
                                    .foregroundColor(.white)
                            }
                        }
                    })
                    .listRowBackground(Color.blue)
                }
            }
            .navigationTitle("Weather")
        }
        .accentColor(.white)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
 
struct RowBackground: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

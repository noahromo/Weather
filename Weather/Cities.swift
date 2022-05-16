//
//  Cities.swift
//  Weather
//
//  Created by Noah Romo on 5/13/22.
//

import SwiftUI

struct Day {
    var dayOfWeek: String
    var imageNameDay: String
    var imageNameNight: String
    var temperatureDay: Int
    var temperatureNight: Int
}

struct City: Identifiable {
    let id = UUID()
    var cityName: String
    var currentTime: String
    var currentImageNameDay: String
    var currentImageNameNight: String
    var currentTemperature: Int
    var cityForcast: [Day]
}

struct Cities {
    
    static let bigCities = [ // To-do: Update this information
        City(cityName: "Miami",
             currentTime: "12:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 90,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "San Francisco",
             currentTime: "9:00 AM",
             currentImageNameDay: "cloud.moon.rain.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 63,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "Dallas",
             currentTime: "11:00 AM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 86,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "New York City",
             currentTime: "12:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 77,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "Chicago",
             currentTime: "11:00 AM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 72,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "London",
             currentTime: "5:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 63,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "Paris",
             currentTime: "6:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 77,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)]),
        
        City(cityName: "Rio de Janeiro",
             currentTime: "1:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperature: 81,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.stars.fill", temperatureDay: 74, temperatureNight: 68),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "wind.snow", imageNameNight: "cloud.moon.fill", temperatureDay: 55, temperatureNight: 44),
                           Day(dayOfWeek: "THU", imageNameDay: "sunset.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 60, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "snow", imageNameNight: "moon.stars.fill", temperatureDay: 25, temperatureNight: 7)])
        ]
}

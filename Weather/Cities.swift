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
    var currentTemperatureDay: Int
    var currentTemperatureNight: Int
    var cityForcast: [Day]
}

struct Cities {
    
    static let bigCities = [ 
        City(cityName: "Miami",
             currentTime: "12:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "cloud.moon.rain.fill",
             currentTemperatureDay: 86,
             currentTemperatureNight: 75,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.bolt.fill", imageNameNight: "cloud.moon.bolt.fill", temperatureDay: 83, temperatureNight: 75),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.sun.bolt.fill", imageNameNight: "cloud.moon.bolt.fill", temperatureDay: 83, temperatureNight: 74),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.bolt.fill", imageNameNight: "cloud.moon.bolt.fill", temperatureDay: 83, temperatureNight: 74),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.bolt.fill", imageNameNight: "moon.stars.fill", temperatureDay: 85, temperatureNight: 76),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.rain.fill", imageNameNight: "cloud.rain.fill", temperatureDay: 84, temperatureNight: 77)]),
        
        City(cityName: "San Francisco",
             currentTime: "9:00 AM",
             currentImageNameDay: "sun.max.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperatureDay: 66,
             currentTemperatureNight: 51,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "sun.max.fill", imageNameNight: "moon.stars.fill", temperatureDay: 66, temperatureNight: 50),
                           Day(dayOfWeek: "TUE", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 70, temperatureNight: 50),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 67, temperatureNight: 54),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 68, temperatureNight: 53),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.fill", temperatureDay: 65, temperatureNight: 56)]),
        
        City(cityName: "Dallas",
             currentTime: "11:00 AM",
             currentImageNameDay: "sun.max.fill",
             currentImageNameNight: "cloud.moon.fill",
             currentTemperatureDay: 93,
             currentTemperatureNight: 72,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 93, temperatureNight: 75),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 94, temperatureNight: 75),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.bolt.rain.fill", temperatureDay: 93, temperatureNight: 73),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.bolt.fill", imageNameNight: "cloud.bolt.rain.fill", temperatureDay: 87, temperatureNight: 68),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.fill", temperatureDay: 89, temperatureNight: 70)]),
        
        City(cityName: "New York City",
             currentTime: "12:00 PM",
             currentImageNameDay: "sun.max.fill",
             currentImageNameNight: "moon.fill",
             currentTemperatureDay: 77,
             currentTemperatureNight: 62,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 87, temperatureNight: 73),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 94, temperatureNight: 65),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.bolt.fill", temperatureDay: 74, temperatureNight: 64),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 80, temperatureNight: 60),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 72, temperatureNight: 60)]),
        
        City(cityName: "Chicago",
             currentTime: "11:00 AM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "cloud.moon.fill",
             currentTemperatureDay: 85,
             currentTemperatureNight: 69,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.fill", temperatureDay: 89, temperatureNight: 72),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.bolt.rain.fill", temperatureDay: 88, temperatureNight: 62),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 69, temperatureNight: 57),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "moon.fill", temperatureDay: 68, temperatureNight: 57),
                           Day(dayOfWeek: "FRI", imageNameDay: "sun.max.fill", imageNameNight: "moon.fill", temperatureDay: 74, temperatureNight: 60)]),
        
        City(cityName: "London",
             currentTime: "5:00 PM",
             currentImageNameDay: "cloud.sun.fill",
             currentImageNameNight: "cloud.moon.fill",
             currentTemperatureDay: 60,
             currentTemperatureNight: 44,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.rain.fill", imageNameNight: "cloud.rain.fill", temperatureDay: 60, temperatureNight: 48),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.rain.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 63, temperatureNight: 47),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 66, temperatureNight: 48),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 69, temperatureNight: 50),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.rain.fill", imageNameNight: "cloud.moon.rain.fill", temperatureDay: 69, temperatureNight: 51)]),
        
        City(cityName: "Paris",
             currentTime: "6:00 PM",
             currentImageNameDay: "sun.max.fill",
             currentImageNameNight: "cloud.moon.fill",
             currentTemperatureDay: 60,
             currentTemperatureNight: 46,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 68, temperatureNight: 52),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 72, temperatureNight: 51),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 74, temperatureNight: 53),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.rain.fill", temperatureDay: 77, temperatureNight: 59),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.bolt.rain.fill", imageNameNight: "cloud.rain.fill", temperatureDay: 80, temperatureNight: 59)]),
        
        City(cityName: "Rio de Janeiro",
             currentTime: "1:00 PM",
             currentImageNameDay: "sun.max.fill",
             currentImageNameNight: "moon.stars.fill",
             currentTemperatureDay: 86,
             currentTemperatureNight: 68,
             cityForcast: [Day(dayOfWeek: "MON", imageNameDay: "sun.max.fill", imageNameNight: "cloud.moon.fill", temperatureDay: 88, temperatureNight: 69),
                           Day(dayOfWeek: "TUE", imageNameDay: "cloud.fill", imageNameNight: "cloud.fill", temperatureDay: 77, temperatureNight: 69),
                           Day(dayOfWeek: "WED", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.fill", temperatureDay: 81, temperatureNight: 68),
                           Day(dayOfWeek: "THU", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.fill", temperatureDay: 82, temperatureNight: 69),
                           Day(dayOfWeek: "FRI", imageNameDay: "cloud.sun.fill", imageNameNight: "cloud.rain.fill", temperatureDay: 78, temperatureNight: 68)])
        ]
}

//
//  DataModel.swift
//  WeatherUtil
//
//  Created by Emerson Zollos on 6/7/22.
//

import UIKit
import SwiftUI

struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class DataModel: NSObject {
    static let data: [WeatherData] = [
        WeatherData (id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill", color: .red),
        WeatherData (id: 2, day: "Tuesday", high: 72, low: 62, icon: "cloud.sun.fill", color: .gray),
        WeatherData (id: 3, day: "Wednesday", high: 86, low: 71, icon: "sun.max.fill", color: .red),
        WeatherData (id: 4, day: "Thursday", high: 68, low: 57, icon: "cloud.drizzle.fill", color: .blue),
        WeatherData (id: 5, day: "Friday", high: 75, low: 68, icon: "sun.min.fill", color: .orange),
        WeatherData (id: 6, day: "Saturday", high: 80, low: 62, icon: "sun.max.fill", color: .red),
        WeatherData (id: 7, day: "Sunday", high: 78, low: 64, icon: "cloud.fog.fill", color: .gray)
    ]
}

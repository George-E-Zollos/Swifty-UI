//
//  ContentView.swift
//  WeatherUtil
//
//  Created by Emerson Zollos on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (DataModel.data, id: \.self) { object in
                HStack {
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)º F")
                        .foregroundColor(Color.orange)
                    NavigationLink (object.day, destination: DetailView(data: object))
                }
            }
            .navigationTitle("New York City")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

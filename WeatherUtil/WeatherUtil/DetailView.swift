//
//  DetailView.swift
//  WeatherUtil
//
//  Created by Emerson Zollos on 6/7/22.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack {

            Text(data.day)
                .font(.title)
                .fontWeight(.bold)
 
            Button("Show Popover") {
                isPopoverShowing = true
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing) {
                Text("H \(data.high)º F")
                    .foregroundColor(Color.orange)
                    .padding()
                Text("L \(data.low)º F")
                    .foregroundColor(Color.blue)
                    .padding()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}

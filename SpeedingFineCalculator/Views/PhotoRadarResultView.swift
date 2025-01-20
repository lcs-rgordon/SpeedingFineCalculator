//
//  PhotoRadarResultView.swift
//  SpeedingFineCalculator
//
//  Created by Russell Gordon on 2025-01-19.
//

import SwiftUI

struct PhotoRadarResultView: View {
    
    // MARK: Stored properties
    let resultToShow: PhotoRadarResult
    
    // MARK: Computed properties
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Speed limit (km/h)")
                    .bold()
                Spacer()
                Text("\(resultToShow.speedLimit)")
            }
            HStack {
                Text("Speed of car (km/h)")
                    .bold()
                Spacer()
                Text("\(resultToShow.speedOfCar)")
            }
            
            Text(resultToShow.result)
                .italic()
        }
        .padding()
    }
}

#Preview {
    PhotoRadarResultView(resultToShow: exampleResult)
}

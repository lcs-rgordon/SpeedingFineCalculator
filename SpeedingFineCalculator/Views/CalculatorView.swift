//
//  CalculatorView.swift
//  SpeedingFineCalculator
//
//  Created by Russell Gordon on 2025-01-19.
//

import SwiftUI

struct CalculatorView: View {
    
    // MARK: Stored properties
    @State var givenSpeedLimit = ""
    @State var givenSpeedOfCar = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Inputs")
                    .font(.title)
                TextField("Speed limit (km/h)", text: $givenSpeedOfCar)
                    .textFieldStyle(.roundedBorder)
                TextField("Speed of car (km/h)", text: $givenSpeedOfCar)
                    .textFieldStyle(.roundedBorder)
                Spacer()
            }
            .padding()
            .navigationTitle("Speeding Calculator")
        }
    }
}

#Preview {
    CalculatorView()
}

//
//  CalculatorView.swift
//  SpeedingFineCalculator
//
//  Created by Russell Gordon on 2025-01-19.
//

import SwiftUI

struct CalculatorView: View {
    
    // MARK: Stored properties
    
    // For holding input values
    @State var givenSpeedLimit = ""
    @State var givenSpeedOfCar = ""
    
    // For showing output values
    @State var result = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Input")
                    .font(.title)
                TextField("Speed limit (km/h)", text: $givenSpeedLimit)
                    .textFieldStyle(.roundedBorder)
                TextField("Speed of car (km/h)", text: $givenSpeedOfCar)
                    .textFieldStyle(.roundedBorder)
                
                Text("Process")
                    .font(.title)

                HStack {
                    
                    Button {
                        calculateResult()
                    } label: {
                        Text("Determine result")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)

                    Spacer()
                    
                    Button {
                        reset()
                    } label: {
                        Text("Reset")
                    }
                    .tint(.red)
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)
                    
                }
                
                Text("Output")
                    .font(.title)
                    .padding(.bottom, 10)
                
                Text(result)
                
                Spacer()
                
                
            }
            .padding()
            .navigationTitle("Speeding Calculator")
        }
    }
    
    // MARK: Functions
    func calculateResult() {
        
        // Just testing output
        result = "Just testing!"
        
    }
    
    func reset() {
        
        // Get ready to calculate another result
        givenSpeedLimit = ""
        givenSpeedOfCar = ""
        result = ""
        
    }
    
}

#Preview {
    CalculatorView()
}

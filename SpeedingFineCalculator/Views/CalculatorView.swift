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

        // Ensure speed limit provided is an integer
        guard let speedLimit = Int(givenSpeedLimit) else {
            result = "Please provide an integer value for the speed limit."
            return
        }

        // Ensure speed of the car is an integer
        guard let speedOfCar = Int(givenSpeedOfCar) else {
            result = "Please provide an integer value for the speed of the car."
            return
        }
        
        // Ensure speed limit is more than zero
        guard speedLimit > 0 else {
            result = "Please provide a speed limit greater than zero."
            return
        }
        
        // Ensure speed of car is not negative
        guard speedOfCar >= 0 else {
            result = "Please provide a non-negative speed for the car."
            return
        }
        
        // How far over the limit is the car going?
        let amountOverLimit = speedOfCar - speedLimit
        
        // Determine the appropriate output message
        if amountOverLimit > 30 {
            result = "You are speeding and your fine is $500."
        } else if amountOverLimit > 20 {
            result = "You are speeding and your fine is $270."
        } else if amountOverLimit > 0 {
            result = "You are speeding and your fine is $100."
        } else {
            result = "Congratulations, you are within the speed limit!"
        }
        
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

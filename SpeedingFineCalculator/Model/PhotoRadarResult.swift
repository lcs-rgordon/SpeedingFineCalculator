//
//  PhotoRadarResult.swift
//  SpeedingFineCalculator
//
//  Created by Russell Gordon on 2025-01-19.
//

import Foundation

struct PhotoRadarResult: Identifiable {
    
    let id = UUID()
    let speedOfCar: Int
    let speedLimit: Int
    let result: String
    
}

let exampleResult = PhotoRadarResult(
    speedOfCar: 110,
    speedLimit: 80,
    result: "You are speeding and your fine is $270."
)

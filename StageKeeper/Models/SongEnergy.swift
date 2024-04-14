//
//  SongEnergy.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

enum SongEnergy {
    case low
    case medium
    case high
    
    var thermometerIconName: String {
        switch self {
        case .low:
            return "thermometer.low"
        case .medium:
            return "thermometer.medium"
        case .high:
            return "thermometer.high"
        }
    }
    
    var name: String {
        switch self {
        case .low:
            return "Low"
        case .medium:
            return "Medium"
        case .high:
            return "High"
        }
    }
}

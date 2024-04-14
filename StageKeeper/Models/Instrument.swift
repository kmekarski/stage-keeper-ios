//
//  Instrument.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

enum Instrument {
    case piano
    case drums
    case bass
    case guitar
    case keyboard
    case trumpet
    
    var letter: String {
        switch self {
        case .piano:
            return "P"
        case .drums:
            return "D"
        case .bass:
            return "B"
        case .guitar:
            return "G"
        case .keyboard:
            return "K"
        case .trumpet:
            return "T"
        }
    }
}

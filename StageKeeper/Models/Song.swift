//
//  Song.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

struct Song: Identifiable {
    let id: String
    let name: String
    let timeInSeconds: Int
    let instruments: [Instrument]
    let energy: SongEnergy
}

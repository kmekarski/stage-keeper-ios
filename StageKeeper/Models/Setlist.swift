//
//  Setlist.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

struct Setlist: Identifiable {
    let id: String
    let name: String
    let songs: [Song]
    let timeInSeconds: Int
    let hasEncore: Bool
    let notes: String
}

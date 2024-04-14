//
//  MockSetlists.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

let setlist1 = Setlist(
    id: "1",
    name: "Rock Classics",
    songs: [
        Song(
            id: "101",
            name: "Stairway to Heaven",
            timeInSeconds: 482,
            instruments: [.guitar, .bass, .drums],
            energy: .medium
        ),
        Song(
            id: "102",
            name: "Bohemian Rhapsody",
            timeInSeconds: 354,
            instruments: [.piano, .guitar, .bass, .drums],
            energy: .high
        ),
        Song(
            id: "103",
            name: "Hotel California",
            timeInSeconds: 391,
            instruments: [.guitar, .bass, .drums],
            energy: .medium
        )
    ],
    timeInSeconds: 1227,
    hasEncore: true
)

let setlist2 = Setlist(
    id: "2",
    name: "Acoustic Evening",
    songs: [
        Song(
            id: "201",
            name: "Wonderwall",
            timeInSeconds: 258,
            instruments: [.guitar],
            energy: .low
        ),
        Song(
            id: "202",
            name: "Hallelujah",
            timeInSeconds: 297,
            instruments: [.piano],
            energy: .medium
        ),
        Song(
            id: "203",
            name: "The Scientist",
            timeInSeconds: 309,
            instruments: [.piano, .guitar],
            energy: .medium
        )
    ],
    timeInSeconds: 864,
    hasEncore: false
)

let setlist3 = Setlist(
    id: "3",
    name: "Funky Grooves",
    songs: [
        Song(
            id: "301",
            name: "Uptown Funk",
            timeInSeconds: 269,
            instruments: [.drums, .bass, .guitar],
            energy: .high
        ),
        Song(
            id: "302",
            name: "Superstition",
            timeInSeconds: 255,
            instruments: [.drums, .bass, .guitar, .trumpet],
            energy: .high
        ),
        Song(
            id: "303",
            name: "Play That Funky Music",
            timeInSeconds: 313,
            instruments: [.drums, .bass, .guitar, .keyboard],
            energy: .high
        )
    ],
    timeInSeconds: 837,
    hasEncore: true
)

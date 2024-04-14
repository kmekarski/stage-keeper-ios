//
//  SongsViewModel.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

class SongsViewModel: ObservableObject {
    @Published var songs: [Song] = setlist1.songs + setlist2.songs + setlist3.songs
}

//
//  SetlistsViewModel.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

class SetlistsViewModel: ObservableObject {
    @Published var setlists: [Setlist] = [
        setlist1, setlist2, setlist3,
    ]
}

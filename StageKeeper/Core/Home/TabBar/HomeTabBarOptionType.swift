//
//  HomeTabBarOptionType.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

enum HomeTabBarOptionType: Int, CaseIterable{
    case setlists = 0
    case songs
    
    var title: String{
        switch self {
        case .setlists:
            return "Setlists"
        case .songs:
            return "Songs"
        }
    }
    
    var iconName: String{
        switch self {
        case .setlists:
            return "music.note"
        case .songs:
            return "music.note"
        }
    }
}

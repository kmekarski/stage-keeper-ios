//
//  HomeSideMenuRowType.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

enum HomeSideMenuRowType: Int, CaseIterable{
    case home = 0
    case bandmates
    case profile
    case about
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .bandmates:
            return "My Bandmates"
        case .about:
            return "About"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "info"
        case .bandmates:
            return "info"
        case .about:
            return "info"
        case .profile:
            return "info"
        }
    }
}

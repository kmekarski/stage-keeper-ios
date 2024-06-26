//
//  StageKeeperApp.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 13/04/2024.
//

import SwiftUI

@main
struct StageKeeperApp: App {
    var setlistsVM: SetlistsViewModel
    var songsVM: SongsViewModel
    
    init() {
        setlistsVM = SetlistsViewModel()
        songsVM = SongsViewModel()
    }
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
            }
        }
        .environmentObject(setlistsVM)
        .environmentObject(songsVM)
    }
}

//
//  HomeView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 13/04/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var setlistsVM: SetlistsViewModel
    @EnvironmentObject var songsVM: SongsViewModel
    
    @State var showSideMenu = false
    @State var selectedSideMenuOptionIndex = 0
    @State var selectedTab: HomeTabBarOptionType = .setlists
    
    var body: some View {
        ZStack {
            ZStack {
                VStack {
                    appBar
                    list
                    Spacer()
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        BigCircleIconButton(icon: "plus", action: {})
                    }
                    .padding()
                    tabBar
                }
            }
            .padding()
            HomeSideMenuView(isShowing: $showSideMenu, selectedSideMenuTab: $selectedSideMenuOptionIndex)
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
    .environmentObject(SetlistsViewModel())
    .environmentObject(SongsViewModel())
}

extension HomeView {
    private var appBar: some View {
        AppBar(title: "Stage Keeper", leading: [
            AppBarIconButtonView(action: {
                showSideMenu.toggle()
            }, icon: "line.3.horizontal")
        ])
    }
    
    private var list: some View {
        ScrollView {
            VStack(spacing: 16) {
                switch selectedTab {
                case .setlists:
                    ForEach(setlistsVM.setlists) {setlist in
                        NavigationLink {
                            SetlistDetailsView(setlist: setlist)
                        } label: { HomeItemCardView(setlist: setlist)
                        }
                    }
                case .songs:
                    ForEach(songsVM.songs) {song in
                        NavigationLink {
                            SongDetailsView(song: song)
                        } label: { HomeItemCardView(song: song)
                        }
                    }
                }
            
            }
            .padding(4)
        }
    }
    
    private var tabBar: some View {
        TabBarView(options: tabBarOptions)
    }
    
    private var tabBarOptions: [TabBarViewButton] {
        [
            TabBarViewButton(text: HomeTabBarOptionType.setlists.title, icon: HomeTabBarOptionType.setlists.iconName, isSelected: selectedTab == .setlists, action: {
            selectedTab = .setlists
        }),
            TabBarViewButton(text: HomeTabBarOptionType.songs.title, icon: HomeTabBarOptionType.songs.iconName, isSelected: selectedTab == .songs, action: {
            selectedTab = .songs
        })
        ]
    }
}

//
//  HomeView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 13/04/2024.
//

import SwiftUI

struct HomeView: View {
    @State var showSideMenu = true
    @State var selectedSideMenuOptionIndex = 0
    @State var selectedTabBarOptionIndex = 0
    
    var body: some View {
        ZStack {
            ZStack {
                VStack {
                    appBar
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
}

extension HomeView {
    private var appBar: some View {
        AppBar(title: "Stage Keeper", leading: [
            AppBarIconButtonView(action: {
                showSideMenu.toggle()
            }, icon: "line.3.horizontal")
        ])
    }
    
    private var tabBar: some View {
        TabBarView(options: tabBarOptions)
    }
    
    private var tabBarOptions: [TabBarViewButton] {
        HomeTabBarOptionType.allCases.enumerated().map { (index, option) in
            TabBarViewButton(text: option.title, icon: option.iconName, isSelected: selectedTabBarOptionIndex == index, action: {
                selectedTabBarOptionIndex = index
            })
        }
    }
}

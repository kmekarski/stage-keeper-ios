//
//  HomeView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 13/04/2024.
//

import SwiftUI

struct HomeView: View {
    @State var showSideMenu = false
    @State var selectedSideMenuTab = 0

    var body: some View {
        ZStack {
            VStack {
                appBar
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding()
            HomeSideMenuView(isShowing: $showSideMenu, selectedSideMenuTab: $selectedSideMenuTab)
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
        AppBar(title: "Stage Keeper", leading: {
            AppBarIconButtonView(action: {
                showSideMenu.toggle()
            }, icon: "info")
        }, trailing: {
            AppBarIconButtonView(action: {
                showSideMenu.toggle()
            }, icon: "info")
        })
    }
}

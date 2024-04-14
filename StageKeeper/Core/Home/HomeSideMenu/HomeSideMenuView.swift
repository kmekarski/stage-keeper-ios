//
//  HomeSideMenuView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct HomeSideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedSideMenuTab: Int
    var body: some View {
        SideMenuView(isShowing: $isShowing, selectedSideMenuTab: $selectedSideMenuTab, menuItems: menuItems)
    }
}

#Preview {
    HomeSideMenuView(isShowing: .constant(true), selectedSideMenuTab: .constant(0))
}

extension HomeSideMenuView {
    private var menuItems: [SideMenuRowView] {
        HomeSideMenuRowType.allCases.enumerated().map { (index, row) in
            SideMenuRowView(title: row.title, icon: row.iconName, isSelected: selectedSideMenuTab == index, action: {
                selectedSideMenuTab = index
                isShowing.toggle()
            })
        }
    }
}

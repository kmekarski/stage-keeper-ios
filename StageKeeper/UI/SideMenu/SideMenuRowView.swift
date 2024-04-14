//
//  SideMenuRowView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SideMenuRowView: View {
    var title: String
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        WideCapsuleButton(text: title, icon: icon, action: action, alignment: .leading, backgroundColor: isSelected ? .yellow : .white)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedSideMenuTab: .constant(0), menuItems: HomeSideMenuRowType.allCases.enumerated().map { (index, row) in
        SideMenuRowView(title: row.title, icon: row.iconName, isSelected: index == 0, action: {
        })
    })
}

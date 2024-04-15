//
//  SideMenuRowView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SideMenuRowView: View {
    var title: String
    var description: String?
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack(spacing: 12) {
                IconCircle(icon: icon, backgroundColor: .yellow)
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 20, weight: .semibold))
                    if let description = description {
                        Text(description)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 16, weight: .regular))

                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(isSelected ? Color(.systemGray5) : .clear)
            .foregroundStyle(.black)
        })
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedSideMenuTab: .constant(0), menuItems: HomeSideMenuRowType.allCases.enumerated().map { (index, row) in
        SideMenuRowView(title: row.title, description: row.description ,icon: row.iconName, isSelected: index == 0, action: {})
    })
}

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
    let iconSize: CGFloat = 16
    
    var body: some View {
        Button{
            action()
        } label: {
            HStack(spacing: 20){
                Image(systemName: icon)
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
                    .foregroundColor(.black)
                Text(title)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            .padding(20)
        }
        .background(isSelected ? Color.yellow : Color.clear)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedSideMenuTab: .constant(0), menuItems: HomeSideMenuRowType.allCases.enumerated().map { (index, row) in
        SideMenuRowView(title: row.title, icon: row.iconName, isSelected: index == 0, action: {
        })
    })
}

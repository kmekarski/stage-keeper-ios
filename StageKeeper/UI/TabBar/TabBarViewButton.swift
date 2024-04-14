//
//  TabBarViewButton.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct TabBarViewButton: View {
    var text: String
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    let textSize: CGFloat = 18
    let iconSize: CGFloat = 22
    
    var body: some View {
        Button(action: action, label: {
            HStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.system(size: iconSize, weight: .semibold))
                    .foregroundStyle(isSelected ? .black : .gray)
                Text(text)
                    .font(.system(size: textSize, weight: .semibold))
                    .foregroundStyle(isSelected ? .black : .gray)
            }
            .frame(maxWidth: .infinity)
        })
    }
}

#Preview {
    TabBarView(options: [
        TabBarViewButton(text: "Songs", icon: "music.note", isSelected: false, action: {}),
        TabBarViewButton(text: "Songs", icon: "music.note", isSelected: true, action: {}),
    ])}

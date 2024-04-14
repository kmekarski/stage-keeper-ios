//
//  TabBarView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct TabBarView: View {
    let options: [TabBarViewButton]
    var body: some View {
        WideCapsuleView {
            HStack(spacing: 12) {
                ForEach(options.indices, id: \.self) { index in
                    options[index]
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    TabBarView(options: [
        TabBarViewButton(text: "Setlists", icon: "music.note", isSelected: false, action: {}),
        TabBarViewButton(text: "Songs", icon: "music.note", isSelected: true, action: {}),
    ])
}

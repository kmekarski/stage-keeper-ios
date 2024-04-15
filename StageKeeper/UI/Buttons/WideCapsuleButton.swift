//
//  WideCapsuleButton.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct WideCapsuleButton: View {
    var text: String
    var icon: String?
    var action: () -> Void
    var alignment: Alignment = .center
    var backgroundColor: Color = .yellow
    let circleSize: CGFloat = 22
    let iconSize: CGFloat = 16
    var body: some View {
        Button(action: action, label: {
            BorderDiagonalShadowContainer(alignment: alignment, backgroundColor: backgroundColor, content: {
                HStack(spacing: 12) {
                    if let icon = icon {
                        IconCircle(icon: icon, size: .small)
                    }
                    Text(text)
                }
            })
            .foregroundStyle(.black)
        })
    }
}

#Preview {
    VStack {
        HStack {
            WideCapsuleButton(text: "Wide button", action: {}, backgroundColor: .white)
            WideCapsuleButton(text: "Info button", icon: "info", action: {})
        }
        WideCapsuleButton(text: "Wide button", action: {}, alignment: .leading)

    }
}

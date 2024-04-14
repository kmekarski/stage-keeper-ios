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
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            WideCapsuleView(alignment: alignment, backgroundColor: backgroundColor, content: {
                HStack(spacing: 12) {
                    if let icon = icon {
                        ZStack {
                            Circle()
                                .foregroundStyle(.black)
                                .frame(width: circleSize+3, height: circleSize+3)
                            Circle()
                                .foregroundStyle(.white)
                                .frame(width: circleSize, height: circleSize)
                            
                            Image(systemName: icon)
                                .font(.system(size: iconSize, weight: .semibold))
                        }
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

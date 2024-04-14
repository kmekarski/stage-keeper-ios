//
//  BigCircleIconButton.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct BigCircleIconButton: View {
    var icon: String
    var action: () -> Void
    let buttonSize: CGFloat = 72
    let iconSize: CGFloat = 38
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle().frame(width: buttonSize*1.05, height: buttonSize*1.05)
                    .foregroundStyle(.black)
                Circle().frame(width: buttonSize*1.05, height: buttonSize*1.05)
                    .foregroundStyle(.black)
                    .offset(x:2, y:3)
                Circle().frame(width: buttonSize, height: buttonSize)
                    .foregroundStyle(.yellow)
                Image(systemName: icon)
                    .font(.system(size: iconSize, weight: .semibold))
                    .foregroundStyle(.black)
            }
        })
    }
}

#Preview {
    BigCircleIconButton(icon: "plus", action: {})
}

//
//  SmallRectangleButton.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SmallRectangleButton: View {
    var text: String
    var action: () -> Void
    var backgroundColor: Color = .yellow
    let cornerRadius: CGFloat = 16
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .font(.system(size: 16, weight: .semibold))
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(style: StrokeStyle(lineWidth: 2)))
                .foregroundStyle(.black)
        })
    }
}

#Preview {
    SmallRectangleButton(text: "Add", action: {})
}

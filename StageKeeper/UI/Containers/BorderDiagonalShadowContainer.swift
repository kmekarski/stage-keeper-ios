//
//  WideCapsuleView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct BorderDiagonalShadowContainer<Content: View>: View {
    var alignment: Alignment = .center
    var backgroundColor: Color = .white
    var content: () -> Content
    
    let cornerRadius: CGFloat = 25
    var body: some View {
        content()
            .frame(maxWidth: .infinity, alignment: alignment)
            .font(.system(size: 18, weight: .semibold))
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(style: StrokeStyle(lineWidth: 2)))
            .background(RoundedRectangle(cornerRadius: cornerRadius).offset(x: 3, y: 3))
    }
}

#Preview {
    VStack {
        BorderDiagonalShadowContainer() {
            Text("Hello capsule")
        }
        BorderDiagonalShadowContainer(alignment: .leading) {
            Text("Hello capsule")
                .padding(.leading, 32)
        }
    }
    .padding()

}

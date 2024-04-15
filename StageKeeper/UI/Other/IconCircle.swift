//
//  IconCircle.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 15/04/2024.
//

import SwiftUI

enum IconCircleSize: CGFloat {
    case small = 25
    case medium = 32
    case big = 40
}

struct IconCircle: View {
    var icon: String
    var size: IconCircleSize = .medium
    var backgroundColor: Color = .white
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(.black)
                .frame(width: size.rawValue, height: size.rawValue)
            Circle()
                .foregroundStyle(backgroundColor)
                .frame(width: size.rawValue-3, height: size.rawValue-3)
            
            Image(systemName: icon)
                .foregroundStyle(.black)
                .font(.system(size: size.rawValue*0.55, weight: .semibold))
        }
    }
}

#Preview {
    HStack {
        IconCircle(icon: "info", size: .big)
        IconCircle(icon: "info", size: .medium)
        IconCircle(icon: "info", size: .small)
        IconCircle(icon: "line.3.horizontal", size: .big)
        IconCircle(icon: "line.3.horizontal", size: .medium)
        IconCircle(icon: "line.3.horizontal", size: .small)

    }
}

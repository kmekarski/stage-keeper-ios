//
//  AppBarIconButtonView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct AppBarIconButtonView: View {
    var action: () -> Void
    var icon: String
    let buttonSize: CGFloat = 36
    let iconSize: CGFloat = 20
    var body: some View {
        Button(action: action, label: {
            IconCircle(icon: icon, size: .big, backgroundColor: .yellow)
        }
        )
    }
}

#Preview {
    VStack {
        AppBar(title: "Stage Keeper", leading: [
            AppBarIconButtonView(action: {}, icon: "info"),
            AppBarIconButtonView(action: {}, icon: "info")
            
        ], trailing: [
            AppBarIconButtonView(action: {}, icon: "info")
        ])
        Spacer()
    }
    .padding()
}

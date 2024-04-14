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
    let size: CGFloat = 32
    var body: some View {
        Button(action: action, label: {
            ZStack{
                Circle()
                    .frame(width: size, height: size)
                    .foregroundStyle(.yellow)
                Image(systemName: icon)
                    .foregroundStyle(.black)
            }
        }
        )
    }
}

#Preview {
    VStack {
        AppBar(title: "Stage Keeper", leading: {
            AppBarIconButtonView(action: {}, icon: "info")
        }, trailing: {
            AppBarIconButtonView(action: {}, icon: "info")
        })
        Spacer()
    }
    .padding()
}

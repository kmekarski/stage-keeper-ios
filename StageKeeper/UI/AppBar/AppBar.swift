//
//  AppBar.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct AppBar<LeadingContent: View, TrailingContent: View>: View {
    var title: String?
    var logo: Image?
    @ViewBuilder let leading: LeadingContent
    @ViewBuilder let trailing: TrailingContent
    var body: some View {
        HStack {
            leading
            Spacer()
            if let title = title {
                           Text(title)
                       } else if let logo = logo {
                           logo.resizable().scaledToFit().frame(height: 30)
                       }
            Spacer()
            trailing
        }
    }
}

#Preview {
    VStack{
        AppBar(title: "Stage Keeper", leading: {
            AppBarIconButtonView(action: {}, icon: "info")
        }, trailing: {
            AppBarIconButtonView(action: {}, icon: "info")
        })
        Spacer()
    }
    .padding()
}

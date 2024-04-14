//
//  AppBar.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct AppBar: View {
    var title: String?
    var logo: Image?
    let leading: [AppBarIconButtonView]
    let trailing: [AppBarIconButtonView]
    
    let titleFontSize: CGFloat = 24
    
    init(title: String? = nil, logo: Image? = nil, leading: [AppBarIconButtonView] = [], trailing: [AppBarIconButtonView] = []) {
        self.title = title
        self.logo = logo
        self.leading = leading
        self.trailing = trailing
    }
    
    var body: some View {
        ZStack {
            HStack {
                HStack(spacing: 8) {
                    ForEach(leading.indices, id: \.self) { index in
                        leading[index]
                    }
                }
                Spacer()
                HStack(spacing: 8) {
                    ForEach(trailing.indices, id: \.self) { index in
                        trailing[index]
                    }
                }
            }
            HStack {
                if let title = title {
                    Text(title).font(.system(size: titleFontSize))
                } else if let logo = logo {
                    logo.resizable().scaledToFit().frame(height: 30)
                }
            }
        }
        .frame(height: 50)
    }
}

#Preview {
    VStack{
        AppBar(title: "Stage Keeper", leading: [
            AppBarIconButtonView(action: {}, icon: "info")
        ], trailing: [
            AppBarIconButtonView(action: {}, icon: "info"),
            AppBarIconButtonView(action: {}, icon: "info")
        ])
        AppBar(title: "Stage Keeper", leading: [
            AppBarIconButtonView(action: {}, icon: "info")
        ])
        AppBar(title: "Stage Keeper")
    }
    .padding()
}

//
//  SideMenu.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 13/04/2024.
//

import Foundation
import SwiftUI
struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedSideMenuTab: Int
    var menuItems: [SideMenuRowView]
    
    let menuWidth: CGFloat = 300
    
    var edgeTransition: AnyTransition = .move(edge: .leading)
    var body: some View {
        ZStack(alignment: .bottom) {
            if (isShowing) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(.systemGray5))
                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(0..<menuItems.count, id: \.self) { index in
                                menuItems[index]
                            }
                            Spacer()
                            SideMenuRowView(title: "Sign Out", icon: "info", isSelected: false, action: {})
                        }
                        .padding(20)
                        .padding(.top, 100)
                        .padding(.bottom, 32)
                    }
                    .frame(width: menuWidth)
                    Spacer()
                }
                .background(.clear)
                    .transition(edgeTransition)
                    .background(
                        Color.clear
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    HomeSideMenuView(isShowing: .constant(true), selectedSideMenuTab: .constant(0))
}

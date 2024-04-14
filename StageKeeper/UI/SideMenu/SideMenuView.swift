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
                            .fill(.white)
                        VStack(alignment: .leading, spacing: 0) {
                            ForEach(0..<menuItems.count, id: \.self) { index in
                                menuItems[index]
                            }
                            Spacer()
                        }
                        .padding(.top, 100)
                    }
                    .frame(width: 270)
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

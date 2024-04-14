//
//  StatView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct StatView: View {
    var stat: HomeItemCardStat
    
    init(_ stat: HomeItemCardStat) {
        self.stat = stat
    }
    var body: some View {
        HStack(spacing: 6) {
            if let icon = stat.icon {
                Image(systemName: icon)
            }
            Text(stat.value)
        }    }
}

#Preview {
    HStack {
        StatView(HomeItemCardStat(icon: "info", value: "Test"))
        StatView(HomeItemCardStat(value: "NoIcon"))
    }
}

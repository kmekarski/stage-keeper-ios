//
//  SongCardView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SongCardView: View {
    var song: Song
    var index: Int
    var body: some View {
        BorderDiagonalShadowContainer {
            VStack(spacing: 16) {
                HStack {
                    Text(song.name)
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    NavigationLink {
                        SongDetailsView(song: song)
                    } label: {
                        HStack(spacing: 4) {
                            Text("Details").font(.system(size: 14, weight: .semibold))
                            Image(systemName: "chevron.right")
                        }
                    }
                    .foregroundStyle(.black)
            }
                    HStack(spacing: 24) {
                        StatView(HomeItemCardStat(icon: "clock", value: song.timeInSeconds.toTimeString(withSeconds: true)))
                        StatView(HomeItemCardStat(icon: song.energy.thermometerIconName, value: song.energy.name))
                        Spacer()
                            InstrumentLettersView(song: song)
                    }
            }
            .padding(8)
        }
    }
}

#Preview {
    SongCardView(song: setlist1.songs.first!, index: 0)
}

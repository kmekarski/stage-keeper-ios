//
//  SongCardView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SongCardView: View {
    @State var isExpanded: Bool = false
    var song: Song
    var index: Int
    var body: some View {
        BorderDiagonalShadowContainer {
            VStack(spacing: 16) {
                HStack {
                    Text(song.name)
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    Button(action: toggleIsExpanded, label: {
                        HStack(spacing: 4) {
                            Image(systemName: "chevron.down")
                                .rotationEffect(Angle(degrees: isExpanded ? 180 : 0))
                            Text("Details").font(.system(size: 14, weight: .semibold))
                        }
                    })
                    .foregroundStyle(.black)
            }
                if isExpanded {
                    HStack(spacing: 24) {
                        StatView(HomeItemCardStat(icon: "clock", value: song.timeInSeconds.toTimeString(withSeconds: true)))
                        Spacer()
                            InstrumentLettersView(song: song)
                    }
                }
                
            }
            .padding(8)
        }
    }
}

#Preview {
    SongCardView(song: setlist1.songs.first!, index: 0)
}

extension SongCardView {
    private func toggleIsExpanded() {
        withAnimation(.linear(duration: 0.2)) {
            isExpanded.toggle()
        }
    }
}

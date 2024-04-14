//
//  InstrumentLettersView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct InstrumentLettersView: View {
    var song: Song
    var body: some View {
        HStack {
                ForEach(song.instruments, id: \.self) { instument in
                    Text(instument.letter)
                }
            }
        }
    }

#Preview {
    InstrumentLettersView(song: setlist1.songs.first!)
}

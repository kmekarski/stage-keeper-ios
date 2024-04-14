//
//  SetlistCardView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct HomeItemCardStat {
    let icon: String?
    let value: String
    
    init(icon: String? = nil, value: String) {
        self.icon = icon
        self.value = value
    }
}

struct HomeItemCardView: View {
    var setlist: Setlist?
    var song: Song?
    
    var title: String
    var stats: [HomeItemCardStat]
    init(setlist: Setlist? = nil, song: Song? = nil) {
        self.setlist = setlist
        self.song = song
        
        self.title = ""
        self.stats = []
        
        if let setlist = setlist {
            self.title = setlist.name
            self.stats = [
                HomeItemCardStat(icon: "clock", value: setlist.timeInSeconds.toTimeString(withSeconds: false)),
                HomeItemCardStat(icon: "music.note", value: "\(setlist.songs.count)"),
                HomeItemCardStat(value: "Encore")
            ]
        }
        if let song = song {
            self.title = song.name
            self.stats = [
                HomeItemCardStat(icon: "clock", value: song.timeInSeconds.toTimeString(withSeconds: true)),
                HomeItemCardStat(icon: song.energy.thermometerIconName, value: song.energy.name)
            ]
        }
    }
    var body: some View {
        BorderDiagonalShadowContainer {
            VStack(spacing: 24) {
                HStack {
                    Text(title)
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    HStack(spacing: 8) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "ellipsis")
                        })
                    }
                    .foregroundStyle(.black)
            }
                HStack(spacing: 24) {
                    ForEach(stats.indices, id: \.self) {index in
                        stat(stats[index])
                    }
                    if let song = song {
                        Spacer()
                        instumentLetters()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(8)
        }
    }
}

#Preview {
    var setlistsVM = SetlistsViewModel()
    var songsVM = SongsViewModel()
    setlistsVM.setlists = [setlist1, setlist2]
    songsVM.songs = setlist1.songs
    return HomeView()
        .environmentObject(setlistsVM)
        .environmentObject(songsVM)
}

extension HomeItemCardView {
    private func stat(_ stat: HomeItemCardStat) -> some View {
        HStack(spacing: 6) {
            if let icon = stat.icon {
                Image(systemName: icon)
            }
            Text(stat.value)
        }
    }
    
    private func instumentLetters() ->  some View {
        HStack {
            if let song = song {
                ForEach(song.instruments, id: \.self) { instument in
                    Text(instument.letter)
                }
            }
        }
    }
}

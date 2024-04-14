//
//  SetlistDetailsView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SetlistDetailsView: View {
    var setlist: Setlist
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                appBar
                timeInfo
                notes
                songsHeader
                songsList
                Spacer()
            }
            VStack {
                Spacer()
                WideCapsuleButton(text: "Perform", icon: "play.fill", action: {})
            }
        }
        .padding()
        
    }
}

#Preview {
    SetlistDetailsView(setlist: setlist2)
}

extension SetlistDetailsView {
    private var appBar: some View {
        AppBar(title: setlist.name,leading: [
            AppBarIconButtonView(action: {}, icon: "chevron.left")
        ], trailing: [
            AppBarIconButtonView(action: {}, icon: "pencil")
        ])
    }
    
    private var timeInfo: some View {
        HStack {
            Image(systemName: "clock")
            Text(setlist.timeInSeconds.toTimeString(withSeconds: false))
        }
        .font(.system(size: 20, weight: .semibold))
        .padding(.bottom)
    }
    
    private var notes: some View {
        Text(setlist.notes)
    }
    
    private var songsHeader: some View {
        HStack(spacing: 8) {
            SectionTitle("Songs")
            Spacer()
            SmallRectangleButton(text: "Add", action: {})
            SmallRectangleButton(text: "Edit", action: {})
        }
    }
    
    private var songsList: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(setlist.songs.indices, id: \.self) {index in
                    SongCardView(song: setlist.songs[index], index: index)
                }
            }
            .padding(4)
        }
    }
}

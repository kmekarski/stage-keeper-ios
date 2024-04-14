//
//  SongDetailsView.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SongDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var song: Song
    var body: some View {
        VStack{
            appBar
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SongDetailsView(song: setlist1.songs.first!)
}

extension SongDetailsView {
    private var appBar: some View {
        AppBar(title: song.name, leading: [
        AppBarIconButtonView(action: {
            presentationMode.wrappedValue.dismiss()
        }, icon: "chevron.left")
        ], trailing: [
            AppBarIconButtonView(action: {}, icon: "pencil")
        ])
    }
}

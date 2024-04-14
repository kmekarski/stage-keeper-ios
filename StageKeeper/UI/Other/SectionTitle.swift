//
//  SectionTitle.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import SwiftUI

struct SectionTitle: View {
    var text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 24, weight: .semibold))
            .padding(.vertical, 8)
    }
}

#Preview {
    VStack(alignment: .leading) {
        Text("some text")
        SectionTitle("Songs")
        Text("some text")
    }
}

//
//  EmojiRow.swift
//  EmojiFinder
//
//  Created by adam alief priyadi on 09/02/24.
//

import SwiftUI

struct EmojiRow: View {
    var emoji: Emoji
    
    var body: some View {
        HStack(alignment:.top, spacing: 16){
            Text(emoji.emoji)
                .font(.largeTitle)
                .padding()
                .background(ColorUtility.randomColor())
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment:.leading){
                Text(emoji.name)
                    .font(.system(.headline, design: .rounded))
                Text(emoji.description)
                    .font(.system(.subheadline, design: .rounded))
                    .lineLimit(3)
            }
            
        }
    }
}

#Preview {
    EmojiRow(emoji: Emoji.emojiTestData[1])
}

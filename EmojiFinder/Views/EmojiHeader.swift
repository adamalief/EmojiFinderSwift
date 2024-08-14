//
//  EmojiHeader.swift
//  EmojiFinder
//
//  Created by adam alief priyadi on 09/02/24.
//

import SwiftUI

struct EmojiHeader: View {
    var emoji: Emoji
    @State private var isAnimating: Bool = false
            
            var body: some View {
                ZStack {
                    ColorUtility.randomColor()
                    
                    Text (emoji.emoji)
                        .font(.system(size:224))
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x:0, y:0)
                        .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    EmojiHeader(emoji: Emoji.emojiTestData[0])
}

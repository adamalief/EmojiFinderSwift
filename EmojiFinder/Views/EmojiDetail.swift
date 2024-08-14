//
//  EmojiDetail.swift
//  EmojiFinder
//
//  Created by adam alief priyadi on 09/02/24.
//

import SwiftUI

struct EmojiDetail: View {
    var emojiItem: Emoji
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    EmojiHeader(emoji: emojiItem)
                
                    VStack(alignment: .leading, spacing:20) {
                        Text("Emoji name: \(emojiItem.name)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text(emojiItem.description)
                    }
                    .padding()
                    .frame(maxWidth: 640, alignment: .leading)
                    
                    EmojiFacts()
                        .padding()
                }
            }
            .navigationTitle(emojiItem.name)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    EmojiDetail(emojiItem: Emoji.emojiTestData[2])
}

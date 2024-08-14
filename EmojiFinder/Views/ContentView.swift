//
//  ContentView.swift
//  EmojiFinder
//
//  Created by adam alief priyadi on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    
    private var emojiDataResult: [Emoji] {
        let result = EmojiProvider.allEmojis()
        guard !searchText.isEmpty else {return result}
        
        return result.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }

    var body: some View {
        NavigationStack {
            List(emojiDataResult) { emoji in 
                NavigationLink {
                    EmojiDetail(emojiItem: emoji)
                } label: {
                    EmojiRow(emoji: emoji)
                }
                
            }
            //.listStyle(.plain)
            .navigationTitle("Emoji Finder")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt:"what emoji's that you're looking for?"
                )
            .overlay {
                if emojiDataResult.isEmpty {
                    ContentUnavailableView.search (text: searchText)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

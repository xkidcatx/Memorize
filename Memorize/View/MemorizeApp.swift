//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Eugene Kotovich on 28.09.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}

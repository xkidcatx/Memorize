//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Eugene Kotovich on 06.11.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    @Published private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> { model.cards }
    var score: Int { model.score }
    
    var theme = themes.randomElement()!
    
   private static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
       let emojis: Array<String> = theme.emojis.shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 6...10)) { pairIndex in
           return emojis[pairIndex]
        }
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func newGame() {
        theme = themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    init() {
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
}
















struct Previews_EmojiMemoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

//
//  MemoryGame.swift
//  Memorize
//
//  Created by Eugene Kotovich on 06.11.2022.
//

import Foundation

struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
       cards = Array<Card>()
        // add numberOfPairOfCards x 2 cards to cards array
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
        
    }
    
    struct Card {
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        
    }
}

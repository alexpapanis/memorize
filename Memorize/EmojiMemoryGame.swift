//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alexandre Papanis on 9/13/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    static private let emojis = ["🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🐥","🦉","🐴","🐝","🐛","🦋","🐌","🐞","🐜","🪰","🪲","🐢","🐍","🐙","🦑","🦀"]
    
    static private func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
}

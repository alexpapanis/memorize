//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Alexandre Papanis on 8/24/23.
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

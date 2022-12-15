//
//  Theme.swift
//  Memorize
//
//  Created by Eugene Kotovich on 11.11.2022.
//

import SwiftUI

struct Theme {
    var name: String
    var emojis: [String]
    var numPairs: Int?
    var cardColor: Color
}

let themes: [Theme] = [
    Theme(name: "Vehicles",
          emojis: ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"],
          numPairs: 24,
          cardColor: .red),
    Theme(name: "Animals",
          emojis: ["🦍","🐘","🦏","🐫","🦒","🦘","🐅","🦓","🐈","🦚","🦜","🐿️","🦖","🦅","🐊","🦀","🐄","🐖","🐇","🦥","🐝","🐒"],
          numPairs: 22,
          cardColor: .green),
    Theme(name: "Fruits",
          emojis: ["🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍒","🍑","🥭","🍍","🥥","🥝"],
          numPairs: 15,
          cardColor: .yellow),
    Theme(name: "Halloween",
          emojis: ["👻","🎃","🕷","🧟‍♂️","🧛🏼‍♀️","☠️","👽","🦹‍♀️","🦇","🌘","⚰️","🔮","🪦","🪄","🐺","🕸️"],
          numPairs: 16,
          cardColor: .orange),
    Theme(name: "Sport",
          emojis: ["⚽️","🏀","🏈","⚾️","🥎","🎾","🏐","🏉","🥏","🎱","🏓","🏸","🏑","🥍","🏏","🪃","🛹","🥊","🤿","🛼","⛸️"],
          numPairs: 21,
          cardColor: .blue),
    Theme(name: "Sweets",
          emojis: ["🥠","🥮","🍡","🍧","🍨","🍦","🥧","🧁","🎂","🍰","🍮","🍭","🍬","🍫","🍩","🍪","🍯","🥐","🧇","🥞"],
          numPairs: 20,
          cardColor: .pink),
    Theme(name: "Flags",
          emojis: ["🏴‍☠️","🏁","🚩","🏳️‍🌈","🇷🇺","🇺🇸","🇫🇮","🇮🇱","🇲🇽","🇯🇵","🇻🇳","🇸🇪","🇳🇴","🇬🇪","🇩🇪","🇫🇷","🇮🇹","🇯🇲","🇮🇳","🇲🇩","🇪🇺","🇺🇳"],
          numPairs: 22,
          cardColor: .cyan)
]

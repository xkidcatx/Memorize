//
//  ContentView.swift
//  Memorize
//
//  Created by Eugene Kotovich on 28.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private var vehicles = ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"]
    
    private var animals = ["🦍","🐘","🦏","🐫","🦒","🦘","🐅","🦓","🐈","🦚","🦜","🐿️","🦖","🦅","🐊","🦀","🐄","🐖","🐇","🦥","🐝","🐒"]
    
    private var food = ["🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍒","🍑","🥭","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🌶️","🌽","🥕","🧄","🥔","🧅"]
    
    @State var emojis = ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"]
    
    @State var emojiCount = 24
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.title)
                .bold()
                .foregroundColor(.red)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            
            HStack {
                
                Button {
                    emojis = vehicles.shuffled()
                    emojiCount = emojis.count
                } label: {
                    VStack {
                        Image(systemName: "car.fill")
                            .font(.largeTitle)
                        Text("Vehicles")
                            .font(.footnote)
                    }
                }
                
                Spacer()
                
                Button {
                    emojis = animals
                    emojiCount = emojis.count
                } label: {
                    VStack {
                        Image(systemName: "pawprint.fill")
                            .font(.largeTitle)
                        Text("Animals")
                            .font(.footnote)
                    }
                }
                
                Spacer()
        
                Button {
                    emojis = food.shuffled()
                    emojiCount = emojis.count
                } label: {
                    VStack {
                        Image(systemName: "carrot.fill")
                            .font(.largeTitle)
                        Text("Food")
                            .font(.footnote)
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

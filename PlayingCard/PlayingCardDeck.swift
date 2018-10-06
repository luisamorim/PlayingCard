//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Luis Henrique de Oliveira Amorim on 10/6/18.
//  Copyright © 2018 Luis Henrique de Oliveira Amorim. All rights reserved.
//

import Foundation


struct PlayinCardDeck {
    
    private(set) var cards = [PlayinCard]()
    
    init() {
        for suit in PlayinCard.Suit.all {
            for rank in PlayinCard.Rank.all{
                cards.append(PlayinCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayinCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        }else {
            return nil
        }
    }
}

extension Int {
    var arc4random:Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        }else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        }else {
            return 0
        }
    }
}

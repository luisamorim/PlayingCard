//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Luis Henrique de Oliveira Amorim on 10/6/18.
//  Copyright © 2018 Luis Henrique de Oliveira Amorim. All rights reserved.
//

import Foundation


struct PlayinCard: CustomStringConvertible {
    
    var description: String {
        return "\(rank)\(suit)"
    }
    
    var suit:Suit
    var rank:Rank
    
    enum Suit:String, CustomStringConvertible {
        
        var description: String {
            return rawValue
        }
        
        case spades = "♠️"
        case diamonds = "♦️"
        case hearts = "♥️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, Suit.diamonds, Suit.hearts, Suit.clubs]
    }
    
    enum Rank: CustomStringConvertible {
        
        case ace
        case face(String)
        case numeric(Int)
        
        var description: String {
            switch self {
                case .ace: return "A"
                case .numeric(let pips): return "\(pips)"
                case .face(let face): return face
            }
        }
        
        var order:Int {
            switch self {
                case .ace: return 1
                case .numeric(let pips): return pips
                case .face(let kind) where kind == "J": return 11
                case .face(let kind) where kind == "Q": return 12
                case .face(let kind) where kind == "K": return 13
                default: return 0
            }
        }
        
        static var all : [Rank] {
            var result = [Rank.ace]
            for pip in 2...10 {
                result.append(Rank.numeric(pip))
            }
            result += [Rank.face("J"),Rank.face("Q"),Rank.face("K")]
            return result
        }
    }
}

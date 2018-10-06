//
//  ViewController.swift
//  PlayingCard
//
//  Created by Luis Henrique de Oliveira Amorim on 10/6/18.
//  Copyright © 2018 Luis Henrique de Oliveira Amorim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayinCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10{
            if let card = deck.draw() {
                print("\(card)")
            }
            
        }
    }

}


//
//  ViewController.swift
//  Concentration
//
//  Created by madao on 2018/12/5.
//  Copyright © 2018 madao. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var emojiChoices = ["👻","💊","💀","🐸"]
    
    var flipsCount = 0 {
        didSet {
            flipsLabel.text = "Flips: \(flipsCount)"
        }
    }

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipsLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        let cardNumber = cardButtons.index(of: sender)
        if let cardNumber = cardNumber {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("The card is out of range")
        }
        flipsCount += 1
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}


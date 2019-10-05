//
//  ViewController.swift
//  Dicee
//
//  Created by Ryan Spishock on 8/31/19.
//  Copyright © 2019 Ryan Spishock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]  // Array for each die image
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0...5)  // Generate random number between 1 and 6 for die 1 (d1-d6)
        randomDiceIndex2 = Int.random(in: 0...5)  // Generate random number between 1 and 6 for die 2 (d1-d6)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])  // Replace dice image with image for number returned by random function
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])  // Replace dice image with image for number returned by random function
    }
    
}


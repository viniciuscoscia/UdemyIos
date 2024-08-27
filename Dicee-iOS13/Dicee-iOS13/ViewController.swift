//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView0: UIImageView!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    fileprivate func getRandomDiceImage() -> UIImage {
        return [
            #imageLiteral(resourceName: "DiceOne"),
            #imageLiteral(resourceName: "DiceTwo"),
            #imageLiteral(resourceName: "DiceThree"),
            #imageLiteral(resourceName: "DiceFour"),
            #imageLiteral(resourceName: "DiceFive"),
            #imageLiteral(resourceName: "DiceSix"),
        ][Int.random(in: 0...5)]
    }
    
    @IBAction func onRollDicesButtonPressed(_ sender: UIButton) {
        diceImageView0.image = getRandomDiceImage()
        diceImageView1.image = getRandomDiceImage()
    }
}

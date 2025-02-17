//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet은 UI요소를 참조할 수 있게 해준다.
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        diceImageViewOne.alpha = 0.5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"),
                         UIImage(named: "DiceThree"), UIImage(named: "DiceFour"),
                         UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
//        diceImageViewOne.image = diceArray.randomElement()
//        diceImageViewTwo.image = diceArray.randomElement()
    }
}


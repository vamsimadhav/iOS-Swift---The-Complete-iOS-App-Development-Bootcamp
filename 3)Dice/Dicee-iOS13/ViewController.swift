//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    let imageArray = [UIImage(imageLiteralResourceName:                          "DiceOne"),
                      UIImage(imageLiteralResourceName: "DiceTwo"),
                      UIImage(imageLiteralResourceName: "DiceThree"),
                      UIImage(imageLiteralResourceName: "DiceFour"),
                      UIImage(imageLiteralResourceName: "DiceFive"),
                      UIImage(imageLiteralResourceName: "DiceSix")];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        firstDiceImageView.image =
                            imageArray[Int.random(in: 0...5)]
        
        secondDiceImageView.image =
                            imageArray[Int.random(in: 0...5)]
        
        
    }
    

}


//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
     
    var counter = 60
    
    var timer = Timer()
    
    var timePassed = 1
    
    let eggTimes = ["Soft":300,"Medium":420,"Hard":720]
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        progressBar.progress = 0.0
        timePassed = 1
        
        let hardness = sender.currentTitle!
        switch hardness {
        case "Soft":
            counter = eggTimes[hardness]!
        case "Medium":
            counter = eggTimes[hardness]!
        case "Hard":
            counter = eggTimes[hardness]!
        default:
            print("Error")
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateCounter() {
        if timePassed <= counter {
            
            var progressPercentage = Float(timePassed)/Float(counter)
            
            print("\(progressPercentage) seconds passed")
            
            progressBar.progress = progressPercentage
            
            timePassed += 1
        }
        else{
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
}

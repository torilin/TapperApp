//
//  ViewController.swift
//  tapperapp
//
//  Created by torilin on 7/24/16.
//  Copyright © 2016 torilin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    
    
    //Oulets
    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var tapButton: UIButton!
    
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func coinButtonPressed(sender: UIButton!) {
        currentTaps += 1
        
        updateTabsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func playButtonPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            tapperLogo.hidden = true
            howManyTapsTxt.hidden = true
            tapButton.hidden = true
            
            coinButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTabsLabel()
            
        }

    }
    
    func restartGame () {
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        tapperLogo.hidden = false
        howManyTapsTxt.hidden = false
        tapButton.hidden = false
        
        coinButton.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver () -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTabsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
}


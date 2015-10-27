//
//  ViewController.swift
//  Multiples
//
//  Created by Alexander Buessing on 10/27/15.
//  Copyright © 2015 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Other Variables
    var sumValue = 0
    var cumulativeValue = 0
    
    //Outlet Variables
    @IBOutlet var textBox: UITextField!
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet var playLabel: UIButton!
    @IBOutlet var addLabel: UIButton!

    //Buttons
    @IBAction func playButton(sender: AnyObject) {
        
        if textBox.text != nil && textBox.text != "" {
            
            textBox.hidden = true
            playLabel.hidden = true
            displayLabel.hidden = false
            addLabel.hidden = false
            
            updateLabel()
            
        }
        
    }
    
    @IBAction func addButton(sender: AnyObject) {
        
        cumulativeValue += Int(textBox.text!)!
        
        if sumValue < 50 {
            updateLabel()
        } else {
            restartGame()
        }
        
    }

    func updateLabel() {
        
        sumValue = cumulativeValue + Int(textBox.text!)!
        
        displayLabel.text = "\(Int(textBox.text!)!) + \(cumulativeValue) = \(sumValue)"
    
    }
    
    func restartGame () {
        
        textBox.hidden = false
        displayLabel.hidden = true
        playLabel.hidden = false
        addLabel.hidden = true
        
        sumValue = 0
        cumulativeValue = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textBox.hidden = false
        displayLabel.hidden = true
        playLabel.hidden = false
        addLabel.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


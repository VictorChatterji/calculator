//
//  ViewController.swift
//  calculator
//
//  Created by Victor Chatterji on 01/06/17.
//  Copyright © 2017 Victor Chatterji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var UserIsInMiddleOfTyping : Bool = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if UserIsInMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }else{
            display.text = digit
            UserIsInMiddleOfTyping = true
        }
    }
    
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }

    @IBAction func performOperation(sender: UIButton) {
        UserIsInMiddleOfTyping = false
        if let mathamticalSymbol = sender.currentTitle {
            switch mathamticalSymbol {
            case "π":
                displayValue = Double(3.14)
            case "√":
                displayValue = sqrt(displayValue)

            default:
                break
            }
        }
    }
    
}


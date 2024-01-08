//
//  ViewController.swift
//  Calculator
//
//  Created by 장지현 on 1/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        if let digit = sender.currentTitle {
            if userIsInTheMiddleOfTyping {
                let textCurrentlyInDisplay = display.text!
                display.text =  textCurrentlyInDisplay + digit
            }else{
                display.text = digit
            }
            userIsInTheMiddleOfTyping = true
        }else{
            print("title is nil")
        }
        
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSybol = sender.currentTitle{
            if mathematicalSybol == "π"{
                display.text = String(Double.pi)
            }
        }
    }
    
}


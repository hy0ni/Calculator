//
//  ViewController.swift
//  Calculator
//
//  Created by 장지현 on 1/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var display: UILabel!
    
   private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
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
    
    private var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping{
            brain.setOperand(operand: displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathematicalSybol = sender.currentTitle{
            brain.performOperation(symbol: mathematicalSybol)
        }
        displayValue = brain.result
    }
    
    
}


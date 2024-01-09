//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 장지현 on 1/9/24.
//

import Foundation

class CalculatorBrain {
    private var accumulator = 0.0
    
    func setOperand(operand: Double){
        accumulator = operand
    }
    
    func performOperation(symbol: String){
        switch symbol{
        case "π": accumulator = Double.pi
        case "⎷": accumulator = sqrt(accumulator)
        default:
            break
        }
    }
    
    var result: Double{
        get{
            return accumulator        }
    }
}


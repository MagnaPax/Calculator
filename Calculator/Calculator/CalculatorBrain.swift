//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 한천희 on 2020/04/17.
//  Copyright © 2020 한천희. All rights reserved.
//

import Foundation


class CalculatorBrain {
    
    private var accumulator: Double? = nil
    private var preOperation: String = ""
    var result: Double = 0.0
    
    // 피연산자 처리
    func setOperand(operand: Double) {
        
        print("사용자가 지금까지 입력한 값은: \(operand)")
        print("이전에 입력된 값은: \(accumulator)")
        
        accumulator = operand
        
    }
    
    // 연산자 처리
    func performOperation(operation: String) {
        print("사용자가 입력한 연산자는: \(operation)")
        switch operation {
        case "+":
            print("+ 연산자 눌렸음")
        default: break
        }
        
        result = 0
    }
    
    
    func arithmetic(operand: Double, operation: String) {
        if accumulator == nil {
            accumulator = operand
        }
        else {
            switch preOperation {
            case "+":
                accumulator = accumulator! + operand
            case "-":
                accumulator = accumulator! - operand
            case "*":
                accumulator = accumulator! * operand
            case "/":
                accumulator = accumulator! / operand
            default:
                break
            }
            
            // 사용자가 = 입력했을 때
            if operation == "=" {
                result = accumulator!
                return
            }
        }
        
        preOperation = operation
        result = 0
        
    }
    
    
    func multiply(op1: Double, op2: Double) -> Double {
        return op1 * op2
    }
    
    
    /*
     var result: Double {
     get {
     return accumulator
     }
     }
     */
    
    
    
}

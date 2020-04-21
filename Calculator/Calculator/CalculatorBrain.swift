//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 한천희 on 2020/04/17.
//  Copyright © 2020 한천희. All rights reserved.
//

import Foundation


class CalculatorBrain {
    
    var result: Double = 0.0
    
    // 피연산자 처리
    func setOperand(operand: Double) {
        result = operand
        print("사용자가 지금까지 입력한 값은:\n\(result)")
    }
    
    // 연산자 처리
    func performOperation(operation: String) {
        print("사용자가 입력한 연산자는:\n\(operation)")
        
    }
    
    func multiply(op1: Double, op2: Double) -> Double {
        return op1 * op2
    }
    
    
}

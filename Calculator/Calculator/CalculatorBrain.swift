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
    

    func arithmetic(operand: Double, operation: String) {
        
        if accumulator == nil {
            accumulator = operand
            print("처음 입력:\n현재값: \(operand) 현재연산자: \(operation) 이전연산자: \(preOperation) 누적값: \(accumulator)")
        }
        else {
            switch preOperation {
            case "+":
                accumulator = accumulator! + operand
            case "-":
                accumulator = accumulator! - operand
            case "×":
                accumulator = accumulator! * operand
            case "/":
                accumulator = accumulator! / operand
            default:
                break
            }
            
            // 사용자가 '=' 를 입력했을 때
            if operation == "=" {
                result = accumulator!
                return
            }
            print("현재값: \(operand) 연산자: \(operation) 이전연산자: \(preOperation) 누적값: \(accumulator)")
        }
        
        preOperation = operation
        result = 0
        
    }

}

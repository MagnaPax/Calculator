//
//  ViewController.swift
//  Calculator
//
//  Created by 한천희 on 2020/04/16.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    private var calculatedResult: [String?] = []
    private var unwrappedTouchedKey: String = ""
    private var mathematicalSymbol: String = ""
    private let textCurrentlyInDisplay: String = ""
    private var userIsInTheMiddleOfTyping = false
    
    
    // 디스플레이의 값을 가져오거나 값을 넣을때마다 String <-> Double 로 매번 변환해줘야 되기 때문에
    private var valueInDisplay: Double {
        get {
            if let textCurrentlyInDisplay = displayLabel.text {
                unwrappedTouchedKey = textCurrentlyInDisplay
            }
            else {
                fatalError("레이블에 아무것도 없음")
            }
            // 레이블에 값이 없는경우를 이미 에러처리 했기 때문에 강제 언래핑
            return Double(unwrappedTouchedKey)!
        }
        
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    
    //MARK: Actions
    @IBAction func touchDigit(_ sender: UIButton) {
        
        // 어떤 버튼 눌렸는지 찾기
        if let touchedKey = sender.currentTitle {
            print("키패드에서 \(touchedKey) 눌렸음")
            unwrappedTouchedKey = touchedKey
        }
        else {
            fatalError("키패드에 아무것도 눌린 값이 없음")
        }
        
        
        // 사용자가 키패드에 입력중이면 이미 레이블에 있는 값에 현재 입력된 값을 누적해서 레이블에 표시
        if userIsInTheMiddleOfTyping {
            if let textCurrentlyInDisplay = displayLabel.text {
                displayLabel.text = textCurrentlyInDisplay + unwrappedTouchedKey
            }
            else {
                fatalError("레이블에 아무것도 없음")
            }
        }
        // 입력하는 도중이 아닌 처음 입력하는 경우는 입력값을 그대로 레이블에 출력
        else {
            displayLabel.text = unwrappedTouchedKey
        }
        
        // touchKeypad(_:) 메소드는 키패드를 눌렀을 때 호출되므로 변수 값을 true로 바꿈
        userIsInTheMiddleOfTyping = true
        
        
    }
    
    
    // 컨트롤러가 모델에 접근하기 위해 인스턴스 생성
    private let brain = CalculatorBrain()
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        // 사용자가 숫자를 입력했다면 touchDigit(_:)이 호출되어 userIsInTheMiddleOfTyping 이 true 가 됐음
        if userIsInTheMiddleOfTyping {
            print("사용자가 이미 값을 입력해서 레이블에 값이 있음")
            brain.setOperand(operand: valueInDisplay)
        }
        
        // 연산자를 누르면 디스플레이에 0 표시
        displayLabel.text = "0"

//        if let touchedOperation = sender.currentTitle {
//            mathematicalSymbol = touchedOperation
//            displayLabel.text = mathematicalSymbol
//        }
    }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}


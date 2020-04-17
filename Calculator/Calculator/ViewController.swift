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
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var tableView: UITableView!
    private var calculatedResult: [String?] = []
    private var unwrappedTouchedKey: String = ""
    private let textCurrentlyInDisplay: String = ""
    private var userIsInTheMiddleOfTyping = false
    
    
    //MARK: Actions
    @IBAction func touchKeypad(_ sender: UIButton) {
        
        // 어떤 버튼 눌렸는지 찾기
        if let touchedKey = sender.currentTitle {
            print("키패드에서 \(touchedKey) 눌렸음")
            unwrappedTouchedKey = touchedKey
        }
        else {
            fatalError("키패드에 아무것도 눌린 값이 없음")
        }
        
        

        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}


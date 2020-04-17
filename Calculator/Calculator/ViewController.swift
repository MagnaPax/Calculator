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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //MARK: Actions
    @IBAction func touchKeypad(_ sender: UIButton) {
        
        calculatedResult.append("hi")
        print("keypad touched")
        print(calculatedResult.index(after: 0))
        display.text = sender.currentTitle
    }
    
}


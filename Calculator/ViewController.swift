//
//  ViewController.swift
//  Calculator
//
//  Created by PrathamK on 9/2/17.
//  Copyright © 2017 PrathamK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var prevNum: Double = 0
    var performMath = false
    var operation = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performMath{
            result.text! = String(sender.tag - 1)
            numberOnScreen = Double(result.text!)!
            performMath = false
            
        }else{
            result.text = result.text! + String(sender.tag - 1)
            numberOnScreen = Double(result.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 11 && sender.tag != 16{
            prevNum = Double(result.text!)!
            if sender.tag == 14{
                result.text = "-"
            }
            if sender.tag == 15{
                result.text = "+"
            }
            operation = sender.tag
            performMath = true
        }else if sender.tag == 16{
            if operation == 15{
                result.text = String(prevNum + numberOnScreen)
            }
        }else if sender.tag == 11{
            result.text = ""
            prevNum = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


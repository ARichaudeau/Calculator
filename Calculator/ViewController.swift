//
//  ViewController.swift
//  Calculator
//
//  Created by formation10 on 28/11/2018.
//  Copyright © 2018 formation10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var uiLabelResult: UILabel!
    var operatorSign: String?
    var previousValue: Double = 0
    var result: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func OnDigitTap(_ sender: UIButton) {
        
        if uiLabelResult.text == "0"{
        uiLabelResult.text?.append(sender.titleLabel?.text ?? "")
    }
    }
    
    @IBAction func OnOperatorTap(_ sender: UIButton) {
        previousValue = Double(uiLabelResult.text ?? "0") ?? 0
        operatorSign = sender.titleLabel?.text
        uiLabelResult.text = "0"
    }
    
    
    @IBAction func OnCalculTap(_ sender: UIButton) {
        switch operatorSign {
        case "+":
            result = previousValue + (Double(uiLabelResult.text ?? "0") ?? 0)
        case "-":
            result = previousValue - (Double(uiLabelResult.text ?? "0") ?? 0)
        case "*":
            result = previousValue * (Double(uiLabelResult.text ?? "0") ?? 0)
        case "/":
            result = previousValue / (Double(uiLabelResult.text ?? "0") ?? 0)
        default :
            print("erreur")
        }
        uiLabelResult.text = String(result)
    }
    

    @IBAction func OnDeleteTap(_ sender: UIButton) {
        uiLabelResult.text = "0"
    }
}


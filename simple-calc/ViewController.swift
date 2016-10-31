//
//  ViewController.swift
//  simple-calc
//
//  Created by Yulong on 10/24/16.
//  Copyright © 2016 yulongproductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    public var currentText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var display: UITextView!
    
    
    @IBAction func number0(_ sender: AnyObject) {
        currentText += "0"
        display.text = currentText
    }
    
    @IBAction func number1(_ sender: AnyObject) {
        currentText += "1"
        display.text = currentText
    }
    @IBAction func number2(_ sender: AnyObject) {
        currentText += "2"
        display.text = currentText
    }
    
    @IBAction func number3(_ sender: AnyObject) {
        currentText += "3"
        display.text = currentText
    }
    
    @IBAction func number4(_ sender: AnyObject) {
        currentText += "4"
        display.text = currentText
    }
    
    @IBAction func number5(_ sender: AnyObject) {
        currentText += "5"
        display.text = currentText
    }
    
    @IBAction func number6(_ sender: AnyObject) {
        currentText += "6"
        display.text = currentText
    }
    
    @IBAction func number7(_ sender: AnyObject) {
        currentText += "7"
        display.text = currentText
    }
    
    @IBAction func number8(_ sender: AnyObject) {
        currentText += "8"
        display.text = currentText
    }
    
    @IBAction func number9(_ sender: AnyObject) {
        currentText += "9"
        display.text = currentText
    }
    
    @IBAction func plus(_ sender: AnyObject) {
        currentText += " + "
        display.text = currentText
    }
    
    @IBAction func minus(_ sender: AnyObject) {
        currentText += " - "
        display.text = currentText
    }
    
    @IBAction func times(_ sender: AnyObject) {
        currentText += " x "
        display.text = currentText
    }
    
    @IBAction func div(_ sender: AnyObject) {
        currentText += " / "
        display.text = currentText
    }
    
    @IBAction func mods(_ sender: AnyObject) {
        currentText += " % "
        display.text = currentText
    }
    
    @IBAction func countClick(_ sender: AnyObject) {
        currentText += " count "
        display.text = currentText
    }
    
    @IBAction func avgClick(_ sender: AnyObject) {
        currentText += " avg "
        display.text = currentText
    }
    
    @IBAction func factClick(_ sender: AnyObject) {
        currentText += " fact "
        display.text = currentText
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        currentText = ""
        display.text = ""
    }
    
    @IBAction func calc(_ sender: AnyObject) {
        var parts : Array = currentText.components(separatedBy: " ")
        let first = Int(parts[0])
        let op = String(parts[1])
        let last = Int(parts[2])
        
        
        
        if (op == "+") {
            display.text = String(add(left: first!, right: last!))
        } else if (op == "-") {
            display.text = String(subtract(left: first!, right: last!))
        } else if (op == "x") {
            display.text = String(multiply(left: first!, right: last!))
        } else if (op == "/") {
            display.text = String(divide(left: first!, right: last!))
        } else if (op == "%") {
            display.text = String(mod(left: first!, right: last!))
            
        } else if (currentText.contains("avg")) {
            let parts = currentText.components(separatedBy: " avg ")
            display.text = String(average(array: intify(array: parts)))
        } else if (currentText.contains("count")) {
            let parts = currentText.components(separatedBy: " count ")
            display.text = String(count(array: intify(array: parts)))
        } else { // fact
            var parts = currentText.components(separatedBy: " fact ")
            display.text = String(fact(num: Int(parts[0])!))
        }
        
        currentText = ""
    }
    
    func intify(array: [String]) -> [Int] {
        var newArray: [Int] = []
        for i in 0...array.count - 1 {
            newArray.append(Int(array[i])!)
        }
        return newArray
    }
    
    // Math operations
    func add(left: Int, right: Int) -> Int {
        return left + right;
    }
    
    func subtract(left: Int, right: Int) -> Int {
        return left - right;
    }
    
    func multiply(left: Int, right: Int) -> Int {
        return left * right;
    }
    
    func divide(left: Int, right: Int) -> Int {
        return left / right;
    }
    
    func mod(left: Int, right: Int) -> Int {
        return left % right;
    }
    
    // Advanced operations
    
    func count(array: [Int]) -> Int {
        return array.count
    }
    
    func average(array: [Int]) -> Int {
        var sum = 0
        for i in 0...array.count - 1 {
            sum += array[i]
        }
        return sum / array.count
    }
    
    func fact(num: Int) -> Int {
        if (num < 0) {
            return -1
        } else if (num == 0 || num == 1) {
            return 1;
        } else {
            return num * fact(num: (num - 1));
        }
    }
    
}


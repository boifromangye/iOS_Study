//
//  ViewController.swift
//  Quiz32
//
//  Created by 권태우 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNumStart: UITextField!
    @IBOutlet weak var tfNumEnd: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text?.removeAll()
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        // Check Nil
        var startNum = tfNumStart.text ?? "0"
        var endNum = tfNumEnd.text ?? "0"
        var temp : String

//        startNum = isNil(str: startNum)
//        endNum = isNil(str: endNum)
        if !compareNum(start: startNum, end: endNum){
            temp = startNum
            startNum = endNum
            endNum = temp
        }
        lblResult.text = "결과 : \(rangeAddition(start: startNum, end: endNum))"
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNumStart.text?.removeAll()
        tfNumEnd.text?.removeAll()
        lblResult.text?.removeAll()
        tfNumStart.becomeFirstResponder()
    }
    
    // Check Nil
    /*
    func isNil(str:String) -> String{
        if str.isEmpty {
            return "0"
        }else{
            return str
        }
    }
    */
    
    // Compare 2 numbers
    func compareNum(start:String, end:String) -> Bool{
        let num1 = Int(start)!
        let num2 = Int(end)!
        
        if num1 < num2 {
            return true
        } else {
            return false
        }
    }
    
    // Sum in range
    func rangeAddition(start:String, end:String) -> Int{
        let num1 = Int(start)!
        let num2 = Int(end)!
        var sum = 0
        
        for i in num1...num2{
            sum += i
        }
        
        return sum
    }
} // ViewController


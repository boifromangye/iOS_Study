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
        guard var startNum = tfNumStart.text else { return }
        guard var endNum = tfNumEnd.text else { return }
        var a : String

        startNum = isNil(str: startNum)
        endNum = isNil(str: endNum)
        if !compareNum(start: startNum, end: endNum){
            a = startNum
            startNum = endNum
            endNum = a
        }
        lblResult.text = "결과 : \(rangeAddition(start: startNum, end: endNum))"
    }
    
    func isNil(str:String) -> String{
        if str.isEmpty {
            return "0"
        }else{
            return str
        }
    }
    
    func compareNum(start:String, end:String) -> Bool{
        let num1 = Int(start)!
        let num2 = Int(end)!
        
        if num1 < num2 {
            return true
        } else {
            return false
        }
    }
    
    func rangeAddition(start:String, end:String) -> Int{
        let num1 = Int(start)!
        let num2 = Int(end)!
        var sum = 0
        
        for i in num1...num2{
            sum += i
        }
        
        return sum
    }
}


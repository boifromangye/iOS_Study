//
//  ViewController.swift
//  Quiz31
//
//  Created by 권태우 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    @IBOutlet weak var lblMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMsg.text = ""
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        self.view.endEditing(true)

        // Optional Unwrapping
        
        guard let num1 = tfNum1.text else {return}
        guard let num2 = tfNum2.text else {return}
        
        // Check input
        if isNil(str: num1){
            lblMsg.text = "1번 숫자를 확인하세요!"
            tfNum1.becomeFirstResponder()
        } else{
            if isNil(str: num2) {
                lblMsg.text = "2번 숫자를 확인하세요!"
                tfNum2.becomeFirstResponder()
            }else{
                if isEven(str: num1) { // Even Decision
                    if isEven(str: num2) {
                        tfResult.text = addition(str1: num1, str2: num2)
                        lblMsg.text = "계산이 완료되었습니다."
                    }else{
                        lblMsg.text = "2번 숫자는 홀수입니다.(\(num2))"
                        tfNum2.becomeFirstResponder()
                    }
                }else{
                    lblMsg.text = "1번 숫자는 홀수입니다.(\(num1))"
                    tfNum1.becomeFirstResponder()
                }
            }
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNum1.text?.removeAll()
        tfNum2.text?.removeAll()
        tfResult.text?.removeAll()
        lblMsg.text?.removeAll()
        tfNum1.becomeFirstResponder()
    }
    
    func isNil(str : String) -> Bool{
        if str.isEmpty {
            return true
        } else{
            return false
        }
    }
    
    func isEven(str : String) -> Bool{
        if Int(str)! % 2 == 0{
            return true
        }else{
            return false
        }
    }
    
    func addition(str1:String, str2:String) -> String{
        return String(Int(str1)! + Int(str2)!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
} // ViewController

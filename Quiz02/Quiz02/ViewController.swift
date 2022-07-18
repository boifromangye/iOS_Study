//
//  ViewController.swift
//  Quiz02
//
//  Created by 권태우 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    @IBOutlet weak var resultPl: UITextField!
    @IBOutlet weak var resultMi: UITextField!
    @IBOutlet weak var resultMu: UITextField!
    @IBOutlet weak var resultQ: UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    @IBOutlet weak var resultR: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnResult(_ sender: UIButton) {
        self.view.endEditing(true)
        
        if firstNum.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || secondNum.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            lblWarning.text = "숫자를 확인하세요!"
        }
        else {
            lblWarning.text = "계산이 되었습니다!"
            let num1 : Int = Int(firstNum.text!)!
            let num2 : Int = Int(secondNum.text!)!
            
            resultPl.text! = "\(num1 + num2)"
            resultMi.text! = "\(num1 - num2)"
            resultMu.text! = "\(num1 * num2)"
            if num2 == 0 {
                resultQ.text = "N/A"
                resultR.text = "N/A"
                lblWarning.text = "나누는 수는 0일 수 없습니다."
            }
            else {
                resultQ.text = "\(num1 / num2)"
                resultR.text = "\(num1 % num2)"
            }
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        firstNum.text?.removeAll()
        secondNum.text?.removeAll()
        resultPl.text?.removeAll()
        resultMi.text?.removeAll()
        resultMu.text?.removeAll()
        resultQ.text?.removeAll()
        resultR.text?.removeAll()
        lblWarning.text?.removeAll()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


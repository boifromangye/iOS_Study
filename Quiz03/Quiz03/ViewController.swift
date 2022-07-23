//
//  ViewController.swift
//  Quiz03
//
//  Created by 권태우 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
    }

    @IBAction func btnResult(_ sender: UIButton) {
        self.view.endEditing(true)

        if tfNum.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            tfNum.becomeFirstResponder()
            lblResult.text = "숫자를 확인하세요!"
        }
        else {
            let num = Int(tfNum.text!)!

            if num % 2 == 0 {
                lblResult.text = "입력하신 숫자는 짝수입니다."
            } else{
                lblResult.text = "입력하신 숫자는 홀수입니다."
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


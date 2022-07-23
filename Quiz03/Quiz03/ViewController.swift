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

        // Optional 처리
        // force unwrap -> !
        // normal -> guard let
        guard let num = tfNum.text else {return}
        
        // 입력 여부 확인 함수 생성
        let numCheck = chekNil(str: num)
        
        if numCheck == 1 {
            //홀짝수 판별 함수 생성
            lblResult.text = numberDecision(str: num)
        } else{
            lblResult.text = "숫자를 확인하세요!"
        }
        
//        if tfNum.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
//            tfNum.becomeFirstResponder()
//            lblResult.text = "숫자를 확인하세요!"
//        }
//        else {
//            let num = Int(tfNum.text!)!
//
//            if num % 2 == 0 {
//                lblResult.text = "입력하신 숫자는 짝수입니다."
//            } else{
//                lblResult.text = "입력하신 숫자는 홀수입니다."
//            }
//        } // Optional 사용
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNum.text?.removeAll()
        lblResult.text?.removeAll()
        tfNum.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func chekNil(str : String) -> Int{
        if str.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    func numberDecision(str : String) -> String{
        if Int(str)! % 2 == 0 {
            return "입력하신 숫자는 짝수입니다."
        } else{
            return "입력하신 숫자는 홀수입니다."
        }
    }
} // ViewController


//
//  ViewController.swift
//  MultiLine
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }
    
    @IBAction func btnAppend(_ sender: UIButton) {
        // tfInput의 nil 여부 체크
        let check = checkNil()
        if check {
            tvResult.text += tfInput.text! + "\n"
        }
    }
    
    func checkNil() -> Bool{
        let check = tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return false
        }else{
            return true
        }
    }
}


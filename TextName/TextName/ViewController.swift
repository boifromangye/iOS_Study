//
//  ViewController.swift
//  TextName
//
//  Created by 권태우 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var labelWarning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfName.placeholder = "이름을 입력하시오. "
    }

    @IBAction func btnSend(_ sender: UIButton) {
        if tfName.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            labelWarning.text = "이름 쓰라고"
        }
        else {
            labelWelcome.text! = "Welcome! \(tfName.text!)"
            labelWarning.text?.removeAll()
        }
        tfName.text?.removeAll()
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        labelWelcome.text = "Welcome!"
        tfName.text?.removeAll()
        labelWarning.text?.removeAll()
    }
}


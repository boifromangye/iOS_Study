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
        if Int(tfNum.text) % 2 == 0 {
            lblResult.text = "입력하신 숫자는 짝수입니다."
        }
    }
    
}


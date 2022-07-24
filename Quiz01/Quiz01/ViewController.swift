//
//  ViewController.swift
//  Quiz01
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblMsg: UILabel!
    @IBOutlet weak var tfName: UITextField!
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnName(_ sender: UIButton) {
        let name = tfName.text ?? "권태우"
        cnt += 1
        if cnt % 2 == 0 {
            lblMsg.text = "Welcome!"
        } else {
            lblMsg.text = "Welcome! \(name)"
        }
    }
    
}


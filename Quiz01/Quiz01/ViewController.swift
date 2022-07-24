//
//  ViewController.swift
//  Quiz01
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblMsg: UILabel!
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnName(_ sender: UIButton) {
        cnt += 1
        if cnt % 2 == 0 {
            lblMsg.text = "Welcome!"
        } else {
            lblMsg.text = "Welcome! 권태우)"
        }
    }
    
}


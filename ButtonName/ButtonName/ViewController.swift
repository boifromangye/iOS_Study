//
//  ViewController.swift
//  ButtonName
//
//  Created by 권태우 on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    var cnt = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = "Welcome!"
    }

    @IBAction func btnName(_ sender: UIButton) {
        cnt += 1
        if cnt % 2 == 0 {
            labelName.text = "Welcome!"
        }
        else {
            labelName.text = "Welcome! 권태우"
        }
    }
    
    
}


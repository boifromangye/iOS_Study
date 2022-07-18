//
//  ViewController.swift
//  ButtonName2
//
//  Created by 권태우 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSmile: UILabel!
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelSmile.text = "이곳에 Emoji가 출력됩니다."
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        if cnt == 0 {
            labelSmile.text = ""
            cnt += 1
        }
        labelSmile.text!.append("😀")
    }
    
    @IBAction func btnErase(_ sender: UIButton) {
        labelSmile.text = String(labelSmile.text!.dropLast())
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        labelSmile.text!.removeAll()
    }
}


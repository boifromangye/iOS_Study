//
//  ViewController.swift
//  ButtonName3
//
//  Created by 권태우 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelEmoji: UILabel!
    var fontSize = 25.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelEmoji.text = ""
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        labelEmoji.text!.append("😄")
    }
    @IBAction func btnMerong(_ sender: UIButton) {
        labelEmoji.text!.append("😛")
    }
    @IBAction func btnAnnoying(_ sender: UIButton) {
        labelEmoji.text!.append("😡")
    }
    @IBAction func btnInc(_ sender: UIButton) {
        fontSize += 5
        labelEmoji.font = UIFont.systemFont(ofSize: fontSize)
    }
    @IBAction func btnDec(_ sender: UIButton) {
        fontSize -= 5
        labelEmoji.font = UIFont.systemFont(ofSize: fontSize)
    }
    @IBAction func btnErase(_ sender: UIButton) {
        labelEmoji.text = String(labelEmoji.text!.dropLast())
    }
    @IBAction func btnClear(_ sender: UIButton) {
        labelEmoji.text!.removeAll()
        labelEmoji.font = UIFont.systemFont(ofSize: 25)
    }
    
}


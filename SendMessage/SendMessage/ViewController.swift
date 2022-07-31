//
//  ViewController.swift
//  SendMessage
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfMsg: UITextField!
    @IBOutlet weak var tvMsg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvMsg.isEditable = false
    }

    @IBAction func btnSend(_ sender: UIButton) {
        let check = checkNil()
        if check {
            tvMsg.text += tfMsg.text! + "\n"
        }    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMsg.text! += "⚽️"
    }
    
    func checkNil() -> Bool{
        let check = tfMsg.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return false
        }else{
            return true
        }
    }
}


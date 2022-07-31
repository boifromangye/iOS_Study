//
//  ViewController.swift
//  Quiz05
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.text.removeAll()
        tvResult.isEditable = false
    }

    @IBAction func btnCal(_ sender: UIButton) {
        tvResult.text.removeAll()

        guard let col = Int(tfNum.text!) else { return }
        for row in 1...9 {
            tvResult.text += "\(col) X \(row) = \(col * row)\n"
        }
    }
}


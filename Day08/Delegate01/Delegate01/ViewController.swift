//
//  ViewController.swift
//  Delegate01
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfInput.delegate = self
    }

    @IBAction func btnResult(_ sender: UIButton) {
        lblOutput.text = tfInput.text
    }
    
} // VC

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblOutput.text = tfInput.text
        return true
    }
}

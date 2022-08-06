//
//  ViewController.swift
//  Quiz220731
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var switchAdd: UISwitch!
    @IBOutlet weak var switchSub: UISwitch!
    @IBOutlet weak var switchMul: UISwitch!
    @IBOutlet weak var switchDiv: UISwitch!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfAddR: UITextField!
    @IBOutlet weak var tfSubR: UITextField!
    @IBOutlet weak var tfMulR: UITextField!
    @IBOutlet weak var tfDivR: UITextField!
    var addR = 0
    var subR = 0
    var mulR = 0
    var divR: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCal(_ sender: UIButton) {
        self.view.endEditing(true)
        
        let num1 = Int(tfNum1.text!) ?? 0
        let num2 : Int = Int(tfNum2.text!) ?? 0
        addR = num1 + num2
        subR = num1 - num2
        mulR = num1 * num2
        
        if switchAdd.isOn {
            tfAddR.text! = "\(addR)"
        }
        if switchSub.isOn {
            tfSubR.text! = "\(subR)"
        }
        if switchMul.isOn {
            tfMulR.text! = "\(mulR)"
        }
        if switchDiv.isOn {
            if num2 == 0 {
                tfDivR.text = "N/A"
            }
            else {
                divR = Double(num1) / Double(num2)
                tfDivR.text = "\(divR)"
            }
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNum1.text?.removeAll()
        tfNum2.text?.removeAll()
        switchAdd.isOn = true
        switchSub.isOn = true
        switchMul.isOn = true
        switchDiv.isOn = true
        tfAddR.text?.removeAll()
        tfSubR.text?.removeAll()
        tfMulR.text?.removeAll()
        tfDivR.text?.removeAll()
        tfNum1.becomeFirstResponder()
    }
    
    @IBAction func swithAddR(_ sender: UISwitch) {
        switch sender.isOn{
        case true: tfAddR.text = "\(addR)"
        default: tfAddR.text?.removeAll()
        }
    }
    
    @IBAction func switchSubR(_ sender: UISwitch) {
        switch sender.isOn{
        case true: tfSubR.text = "\(subR)"
        default: tfSubR.text?.removeAll()
        }
    }
    
    @IBAction func switchMulR(_ sender: UISwitch) {
        switch sender.isOn{
        case true: tfMulR.text = "\(mulR)"
        default: tfMulR.text?.removeAll()
        }
    }
    
    @IBAction func switchDivR(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            if Int(tfNum2.text!)! == 0 {
                tfDivR.text = "N/A"
            }else {
                tfDivR.text = "\(divR)"
            }
        default: tfDivR.text?.removeAll()
        }
    }
}


//
//  ViewController.swift
//  ComputerSpec
//
//  Created by 권태우 on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {
//화면 뜨기 전
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldSize: UITextField!
    @IBOutlet weak var textFieldWeight: UITextField!
    @IBOutlet weak var textFieldBag: UITextField!
    @IBOutlet weak var textFieldColor: UITextField!
    
    @IBOutlet weak var pcName: UILabel!
    @IBOutlet weak var pcSize: UILabel!
    @IBOutlet weak var pcWeight: UILabel!
    @IBOutlet weak var pcBag: UILabel!
    @IBOutlet weak var pcColor: UILabel!
    
    override func viewDidLoad() { //기준
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        textFieldName.text = "Hello!"
    }
//화면 뜬 후
    @IBAction func btnOK(_ sender: UIButton) {
//        let pcName : String = "MacBook Pro"
//        let pcSize : Int = 16
//        let pcWeight : Double = 2.56
//        let pcBag : Bool = false
//        let pcColor : Character = "S"
//        textFieldName.text = pcName
//        textFieldSize.text = "\(pcSize)"
//        textFieldWeight.text = "\(pcWeight)"
//        textFieldBag.text = "\(pcBag)"
//        textFieldColor.text = "\(pcColor)"
        pcName.text! = "제품명 : \(String(describing: textFieldName.text))"
        pcSize.text! = "크기 : \(String(describing: textFieldSize.text))"
        pcWeight.text! = "무게 : \(String(describing: textFieldWeight.text))"
        pcBag.text! = "가방 : \(String(describing: textFieldBag.text))"
        pcColor.text! = "색상 : \(String(describing: textFieldColor.text))"
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        textFieldName.text?.removeAll()
        textFieldSize.text?.removeAll()
        textFieldWeight.text?.removeAll()
        textFieldBag.text?.removeAll()
        textFieldColor.text?.removeAll()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


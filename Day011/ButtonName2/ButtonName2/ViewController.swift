//
//  ViewController.swift
//  ButtonName2
//
//  Created by 권태우 on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblSmile: UILabel!
    var smiles: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSmile.text = "이곳에 Emoji가 출력 됩니다."
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        smiles += "😀"
        lblSmile.text! = smiles
    }
    
}


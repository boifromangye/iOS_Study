//
//  ViewController.swift
//  Quiz051
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblLamp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchResize(_ sender: UISwitch) {
        switch sender.isOn{
        case true:  lblLamp.text = "전구 축소"
            imgView.image = UIImage(named: "")
        default: lblLamp.text = "전구 확대"
        }
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
    }
}


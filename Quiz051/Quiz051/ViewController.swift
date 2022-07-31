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
        imgView.image = UIImage(named: "lamp_on")
    }

    @IBAction func switchResize(_ sender: UISwitch) {
        switch sender.isOn{
        case true:  lblLamp.text = "전구 축소"
                    imgView.frame.size = CGSize(width: imgView.frame.width * 2, height: imgView.frame.height * 2)
        default:    lblLamp.text = "전구 확대"
                    imgView.frame.size = CGSize(width: imgView.frame.width / 2, height: imgView.frame.height / 2)
        }
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
        switch sender.isOn{
        case true: imgView.image = UIImage(named: "lamp_on")
        default: imgView.image = UIImage(named: "lamp_off")
        }
    }
}


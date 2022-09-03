//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by 권태우 on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        // UIAlertController
        let testAlert = UIAlertController(title: "ALERT", message: "Alert", preferredStyle: .alert)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
    }
}


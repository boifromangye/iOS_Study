//
//  ViewController.swift
//  TabBar
//
//  Created by 권태우 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGoImgView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnGoDP(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}


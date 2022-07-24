//
//  ViewController.swift
//  EmojiTest
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblNum: UILabel!
    let arr = [1,2,13,54,75,76,87,89,92,95,111,1245]
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblNum.text = "\(arr[0])"
    }

    @IBAction func btnInc(_ sender: UIButton) {
        cnt += 1

        if cnt < arr.count {
            lblNum.text = "\(arr[cnt])"

        }
    }
    
}


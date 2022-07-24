//
//  ViewController.swift
//  Emoji
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblEmoji: UILabel!
    @IBOutlet weak var lblArr: UILabel!
    let arr = ["⭐️", "🇰🇷", "⚽️", "📸", "📖", "❤️", "😛"]
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblArr.text?.removeAll()
        for i in arr {
            lblArr.text! += i
        }
        lblEmoji.text = arr[0]
    }
    @IBAction func btnPlay(_ sender: UIButton) {
        cnt += 1

        lblEmoji.text = arr[cnt%arr.count]
    }
}


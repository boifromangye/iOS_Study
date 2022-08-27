//
//  ViewController.swift
//  ButtonName2
//
//  Created by 권태우 on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblEmoji: UILabel!
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblEmoji.text = "여기에 Emoji가 출력됩니다."
    }

    @IBAction func btnMerong(_ sender: UIButton) {
        emoji += "🤪"
        lblEmoji.text! = emoji
    }
    
    @IBAction func btnSmile(_ sender: UIButton) {
        emoji += "😄"
        lblEmoji.text! = emoji
    }
    
    @IBAction func btnAnnoying(_ sender: UIButton) {
        emoji += "😡"
        lblEmoji.text! = emoji
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        emoji.removeLast()
        lblEmoji.text! = emoji
    }
    @IBAction func btnClear(_ sender: UIButton) {
        emoji.removeAll()
        lblEmoji.text = "여기에 Emoji가 출력됩니다."
    }
    
} // ViewController


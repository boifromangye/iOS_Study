//
//  ViewController.swift
//  Quiz06
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblFileName: UILabel!
    @IBOutlet weak var imgFlower: UIImageView!
    let imgArr = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImg()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        if cnt <= 0 {
            cnt = imgArr.count
        }
        cnt -= 1
        displayImg()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        cnt += 1
        displayImg()
    }
    
    func displayImg() {
        lblFileName.text = imgArr[cnt%imgArr.count]
        imgFlower.image = UIImage(named: imgArr[cnt%imgArr.count])
    }
}


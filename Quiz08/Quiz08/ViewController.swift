//
//  ViewController.swift
//  Quiz08
//
//  Created by 권태우 on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblFileName: UILabel!
    @IBOutlet weak var imgFlower: UIImageView!
    let imgArr = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    var interval = 0.1
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var cnt = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImg()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    func displayImg() {
        lblFileName.text = imgArr[cnt%imgArr.count]
        imgFlower.image = UIImage(named: imgArr[cnt%imgArr.count])
    }
    
    @objc func updateTime(){
        _ = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "a hh:mm:ss"
        
        cnt += 1
        displayImg()
    }
}


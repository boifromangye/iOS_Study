//
//  ViewController.swift
//  Quiz081
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle1: UILabel!
    @IBOutlet weak var imgFlower1: UIImageView!
    @IBOutlet weak var lblTitle2: UILabel!
    @IBOutlet weak var imgFlower2: UIImageView!
    let imgArr = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    var interval = 0.1
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var cnt1 = 0
    var cnt2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImg()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    func displayImg() {
        lblTitle1.text = imgArr[cnt1%imgArr.count]
        imgFlower1.image = UIImage(named: imgArr[cnt1%imgArr.count])
        lblTitle2.text = imgArr[cnt2%imgArr.count]
        imgFlower2.image = UIImage(named: imgArr[cnt2%imgArr.count])
    }
    
    @objc func updateTime(){
        _ = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "ss"
        
        cnt1 += 1
        if cnt1 % 3 == 0{
            cnt2 += 1
        }
        displayImg()
    }
}


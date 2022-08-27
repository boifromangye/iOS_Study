//
//  ViewController.swift
//  Quiz061
//
//  Created by 권태우 on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgFlower: UIImageView!
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var lblFileName: UILabel!
    let imgArr = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    var cnt = 0
    var cntPre = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImg()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        checkCnt()
        cnt -= 1
        cntPre -= 1
        displayImg()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        checkCnt()
        cnt += 1
        cntPre += 1
        displayImg()
    }
    
    func displayImg() {
        lblFileName.text = imgArr[cnt%imgArr.count]
        imgFlower.image = UIImage(named: imgArr[cnt%imgArr.count])
        imgPreview.image = UIImage(named: imgArr[cntPre%imgArr.count])
    }
    
    func checkCnt() {
        if cnt <= 0 {
            cnt = imgArr.count
            cntPre = imgArr.count+1
        }
    }
}


//
//  ViewController.swift
//  ImageView
//
//  Created by 권태우 on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    var imgOn: UIImage?
    var imgOff: UIImage?
    var isZoom = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
    }

    @IBAction func btnResizeImg(_ sender: UIButton) {
        var w: CGFloat
        var h: CGFloat
        
        if isZoom{
            w = imgView.frame.width / 2
            h = imgView.frame.height / 2
            btnResize.setTitle("Image 확대", for: .normal)
        }else{
            w = imgView.frame.width * 2
            h = imgView.frame.height * 2
            btnResize.setTitle("Image 축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: w, height: h)
        isZoom = !isZoom
    }
    
    @IBAction func switchImg(_ sender: UISwitch) {
        switch sender.isOn{
        case true: imgView.image = imgOn
        default: imgView.image = imgOff
        }
    }
}


//
//  ViewController.swift
//  PickerView
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var pvTitle: UIPickerView!
    let imgArr = ["w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8", "w9", "w10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController: UIPickerViewDelegate{
    // PickerView에 thumbnail 배치(viewForRow)
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: UIImage(named: imgArr[row]))
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}

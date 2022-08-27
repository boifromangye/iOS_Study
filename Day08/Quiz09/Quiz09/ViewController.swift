//
//  ViewController.swift
//  Quiz09
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var pickerDan: UIPickerView!
    @IBOutlet weak var tvResult: UITextView!
    let dans = [Int](2...9) // 범위
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblTitle.text = "2단"
        for i in 1...9{
            tvResult.text += "2 X \(i) = \(2*i)\n"
        }
    }


}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 8
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tvResult.text.removeAll()
        lblTitle.text = "\(dans[row])단"
        for i in 1...9{
            tvResult.text += "\(dans[row]) X \(i) = \(dans[row]*i)\n"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let lblPicker = UILabel()
        lblPicker.text = "\(dans[row])단"
        lblPicker.textAlignment = .center
        
        return lblPicker
    }
}

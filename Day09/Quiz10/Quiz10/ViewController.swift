//
//  ViewController.swift
//  Quiz10
//
//  Created by 권태우 on 2022/08/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickedTime: UILabel!
    var interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var pickedTime: String?
    var alertFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblPickedTime.text = "알람 시간을 선택하세요. "
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        lblPickedTime.text = "선택 시각 : \(formatter.string(from: datePickerView.date))"
        
        formatter.dateFormat = "a hh:mm"
        pickedTime = formatter.string(from: datePickerView.date)
        alertFlag = false
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재 시각 : \(formatter.string(from: date as Date))"
        
        formatter.dateFormat = "a hh:mm"
        let currentTime = formatter.string(from: date as Date)
                
        if pickedTime == currentTime  && !alertFlag{
            self.alertFlag = true

            let alertAlarmOn = UIAlertController(title: "알람", message: "설정된 시간입니다!", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "확인", style: .default, handler: nil)
            alertAlarmOn.addAction(actionOK)
            present(alertAlarmOn, animated: true, completion: nil)
        }
    }
}


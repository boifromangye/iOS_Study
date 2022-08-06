//
//  ViewController.swift
//  Quiz07
//
//  Created by 권태우 on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurrntTime: UILabel!
    @IBOutlet weak var lblPickedTime: UILabel!
    @IBOutlet var viewQuiz07: UIView!
    var interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var pickedTime = ""
    var cnt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm" // HH for 24hrs
        lblPickedTime.text = "선택 시각 : \(formatter.string(from: datePickerView.date))"
        
        formatter.dateFormat = "a hh:mm"
        pickedTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrntTime.text = "현재 시각 : \(formatter.string(from: date as Date))"
        
        formatter.dateFormat = "a hh:mm"
        let currentTime = formatter.string(from: date as Date)
        
        if pickedTime == currentTime {
            if cnt%2 == 0 {
                viewQuiz07.backgroundColor = UIColor.red
            } else {
                viewQuiz07.backgroundColor = UIColor.blue
            }
        } else {
            viewQuiz07.backgroundColor = UIColor.white
        }
        cnt += 1
    }
}


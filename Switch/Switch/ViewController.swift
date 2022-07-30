//
//  ViewController.swift
//  Switch
//
//  Created by 권태우 on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfKoreanScore: UITextField!
    @IBOutlet weak var tfEnglishScore: UITextField!
    @IBOutlet weak var tfMathScore: UITextField!
    @IBOutlet weak var lblGrade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblGrade.text?.removeAll()
    }

    @IBAction func btnCal(_ sender: UIButton) {
        guard let korScore = Int(tfKoreanScore.text!) else { return lblGrade.text = "국어 점수를 입력하세요." }
        guard let engScore = Int(tfEnglishScore.text!) else { return lblGrade.text = "영어 점수를 입력하세요." }
        guard let matScore = Int(tfMathScore.text!) else { return lblGrade.text = "수학 점수를 입력하세요." }


    }
    
}


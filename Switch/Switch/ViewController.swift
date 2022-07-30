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

        let sum = korScore + engScore + matScore
        let avg = Double(sum)/3
        
        if korScore > 100 || engScore > 100 || matScore > 100 || korScore < 0 || engScore < 0 || matScore < 0 {
            lblGrade.text = "점수는 0과 100사이 값이어야 합니다. "
        } else{
            switch avg{
            case 90...100:
                lblGrade.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 수입니다."
            case 80..<90:
                lblGrade.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 우입니다."
            case 70..<80:
                lblGrade.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 미입니다."
            case 60..<70:
                lblGrade.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 양입니다."
            case 0..<60:
                lblGrade.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 가입니다."
            default:
                lblGrade.text = "점수를 잘못 입력했습니다. "
            }
        }
    }
}


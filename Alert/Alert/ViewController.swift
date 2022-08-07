//
//  ViewController.swift
//  Alert
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgLamp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgLamp.image = UIImage(named: "lamp_off")
    }

    @IBAction func btnOn(_ sender: UIButton) {
        if imgLamp.image == UIImage(named: "lamp_on"){
            let alertAlreadyOn = UIAlertController(title: "경고", message: "현재 ON 상태입니다.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            alertAlreadyOn.addAction(actionOK)
            present(alertAlreadyOn, animated: true, completion: nil)
        }else{
            let alertOn = UIAlertController(title: "램프 켜기", message: "램프를 켜겠습니까?", preferredStyle: .alert)
            let actionYes = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.imgLamp.image = UIImage(named: "lamp_on")
        })
            let actionNo = UIAlertAction(title: "아니오", style: .destructive, handler: nil)
            alertOn.addAction(actionYes)
            alertOn.addAction(actionNo)
            present(alertOn, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnOff(_ sender: UIButton) {
        if imgLamp.image == UIImage(named: "lamp_off"){
            let alertAlreadyOff = UIAlertController(title: "경고", message: "현재 OFF 상태입니다.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            alertAlreadyOff.addAction(actionOK)
            present(alertAlreadyOff, animated: true, completion: nil)
        }else{
            let alertOff = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: .alert)
            let actionYes = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.imgLamp.image = UIImage(named: "lamp_off")
        })
            let actionNo = UIAlertAction(title: "아니오", style: .destructive, handler: nil)
            alertOff.addAction(actionYes)
            alertOff.addAction(actionNo)
            present(alertOff, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        if imgLamp.image == UIImage(named: "lamp_remove"){
            let alertAlreadyRemoved = UIAlertController(title: "경고", message: "현재 REMOVED 상태입니다.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            alertAlreadyRemoved.addAction(actionOK)
            present(alertAlreadyRemoved, animated: true, completion: nil)
        }else{
            let alertRemoving = UIAlertController(title: "램프 깨기", message: "램프를 깨겠습니까?", preferredStyle: .alert)
            let actionYes = UIAlertAction(title: "네, 제거합니다.", style: .destructive, handler: {ACTION in
                self.imgLamp.image = UIImage(named: "lamp_remove")
            })
            let actionOff = UIAlertAction(title: "아니오, 끕니다.", style: .default, handler: {ACTION in
                self.imgLamp.image = UIImage(named: "lamp_off")
            })
            let actionOn = UIAlertAction(title: "아니오, 켭니다.", style: .default, handler: {ACTION in
            self.imgLamp.image = UIImage(named: "lamp_on")
            })
            alertRemoving.addAction(actionOff)
            alertRemoving.addAction(actionOn)
            alertRemoving.addAction(actionYes)
            present(alertRemoving, animated: true, completion: nil)
        }
    }
}


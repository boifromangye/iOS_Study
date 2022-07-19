//
//  ViewController.swift
//  Self_Study1
//
//  Created by 권태우 on 2022/07/19.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlan(_ sender: UIButton) {
        guard let svc = self.storyboard?.instantiateViewController(withIdentifier: "planVC") else {
                return
        }
        svc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(svc, animated: true)
    }
}

class PlanningViewController : UIViewController {

}

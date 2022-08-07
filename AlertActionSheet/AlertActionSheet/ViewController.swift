//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by 권태우 on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        let testAlert = UIAlertController(title: "TITLE", message: "Message", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("DESTRUCTIVE ACTION CALLED")
        })
        
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)

        
        present(testAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
    }
}


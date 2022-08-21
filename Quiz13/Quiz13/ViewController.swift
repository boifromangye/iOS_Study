//
//  ViewController.swift
//  Quiz13
//
//  Created by 권태우 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblNum: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 10
        pageControl.pageIndicatorTintColor = UIColor.gray
        setNumber(pageControl.currentPage+1)
    }

    @IBAction func changeNum(_ sender: UIPageControl) {
        let num = pageControl.currentPage+1
        setNumber(num)
    }
    
    func setNumber(_ num: Int){
        if num%2 == 1{
            lblNum.textColor = UIColor.red
            pageControl.currentPageIndicatorTintColor = UIColor.red
            lblNum.text = String(num)
        } else{
            lblNum.textColor = UIColor.blue
            pageControl.currentPageIndicatorTintColor = UIColor.blue
            lblNum.text = String(num)
        }
    }
}


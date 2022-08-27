//
//  ViewController.swift
//  PageControl
//
//  Created by 권태우 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgFlower: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var lblTitle: UILabel!
    let flowers = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = flowers.count
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgFlower.image = UIImage(named: flowers[pageControl.currentPage])
        lblTitle.text = flowers[pageControl.currentPage]
    }

    @IBAction func changePage(_ sender: UIPageControl) {
        imgFlower.image = UIImage(named: flowers[pageControl.currentPage])
        lblTitle.text = flowers[pageControl.currentPage]
    }
} // ViewController


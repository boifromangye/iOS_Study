//
//  ViewController.swift
//  Quiz13-02
//
//  Created by 권태우 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgFlower: UIImageView!
    @IBOutlet weak var lblFlower: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    let flowers = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makeSingleTouch()
        makeDoubleTouch()
        pageControl.numberOfPages = flowers.count
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgFlower.image = UIImage(named: flowers[pageControl.currentPage])
        lblFlower.text = flowers[pageControl.currentPage]
    }
    
    @IBAction func changeFlower(_ sender: UIPageControl) {
        setImage()
    }
    
    func makeSingleTouch(){
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                pageControl.currentPage += 1
                setImage()
            case UISwipeGestureRecognizer.Direction.right:
                pageControl.currentPage -= 1
                setImage()
            default:
                break
            }
        }
    }
    
    func makeDoubleTouch(){
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeft.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        swipeRight.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                pageControl.currentPage = pageControl.numberOfPages-1
                setImage()
            case UISwipeGestureRecognizer.Direction.right:
                pageControl.currentPage = 0
                setImage()
            default:
                break
            }
        }
    }
    
    func setImage(){
        imgFlower.image = UIImage(named: flowers[pageControl.currentPage])
        lblFlower.text = flowers[pageControl.currentPage]
    }
}


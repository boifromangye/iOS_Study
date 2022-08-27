//
//  ViewController.swift
//  SwipeGesture
//
//  Created by 권태우 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgUp: UIImageView!
    @IBOutlet weak var imgDown: UIImageView!
    @IBOutlet weak var imgLeft: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    
    var left = [UIImage]()
    var right = [UIImage]()
    var up = [UIImage]()
    var down = [UIImage]()
    let numOfTouches = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Set Image
        makeImages()
        
        // Initial View
        imgUp.image = up[0]
        imgDown.image = down[0]
        imgLeft.image = left[0]
        imgRight.image = right[0]
        
        makeSingleTouch()
        makeDoubleTouch()
    }

    func makeImages(){
        // Init
        up.append(UIImage(named: "arrow-up-black")!)
        down.append(UIImage(named: "arrow-down-black")!)
        left.append(UIImage(named: "arrow-left-black")!)
        right.append(UIImage(named: "arrow-right-black")!)
        
        // With a finger
        up.append(UIImage(named: "arrow-up-red")!)
        down.append(UIImage(named: "arrow-down-red")!)
        left.append(UIImage(named: "arrow-left-red")!)
        right.append(UIImage(named: "arrow-right-red")!)
        
        // With two fingers
        up.append(UIImage(named: "arrow-up-green")!)
        down.append(UIImage(named: "arrow-down-green")!)
        left.append(UIImage(named: "arrow-left-green")!)
        right.append(UIImage(named: "arrow-right-green")!)
    }
    
    func makeSingleTouch(){
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    func makeDoubleTouch(){
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        swipeUp.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        swipeDown.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeft.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        swipeRight.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgUp.image = up[0]
            imgDown.image = down[0]
            imgLeft.image = left[0]
            imgRight.image = right[0]
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.up:
                imgUp.image = up[1]
            case UISwipeGestureRecognizer.Direction.down:
                imgDown.image = down[1]
            case UISwipeGestureRecognizer.Direction.left:
                imgLeft.image = left[1]
            case UISwipeGestureRecognizer.Direction.right:
                imgRight.image = right[1]
            default:
                break
            }
        }
    }
    
    @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgUp.image = up[0]
            imgDown.image = down[0]
            imgLeft.image = left[0]
            imgRight.image = right[0]
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.up:
                imgUp.image = up[2]
            case UISwipeGestureRecognizer.Direction.down:
                imgDown.image = down[2]
            case UISwipeGestureRecognizer.Direction.left:
                imgLeft.image = left[2]
            case UISwipeGestureRecognizer.Direction.right:
                imgRight.image = right[2]
            default:
                break
            }
        }
    }
}


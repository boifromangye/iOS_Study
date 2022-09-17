//
//  AddViewController.swift
//  Table
//
//  Created by 권태우 on 2022/09/17.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var tfAddItem: UITextField!
    @IBOutlet weak var pickerViewItemImage: UIPickerView!
    @IBOutlet weak var imgItemImage: UIImageView!
    var imageArr = [UIImage?]()
    var imgArr = ["cart", "clock", "pencil"]
    
    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM{
            let image = UIImage(named: imgArr[i])
            imageArr.append(image)
        }
        
        pickerViewItemImage.delegate = self
        pickerViewItemImage.dataSource = self
        
        imgItemImage.image = UIImage(named: imgArr[0])
        Message.itemsImageFile = imgArr[0]
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        if tfAddItem.text!.isEmpty{
            Message.check = "Old"
        }else{
            Message.check = "New"
            Message.item = tfAddItem.text!
        }
        
        tfAddItem.text = ""
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgArr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgItemImage.image = UIImage(named: imgArr[row])
        Message.itemsImageFile = imgArr[row]
    }
    
    // PickerView에 thumbnail 배치(viewForRow)
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: UIImage(named: imgArr[row]))
        imageView.frame = CGRect(x: 0, y: 0, width: PICKER_VIEW_HEIGHT, height: PICKER_VIEW_HEIGHT)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
}


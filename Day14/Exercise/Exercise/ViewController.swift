//
//  ViewController.swift
//  Exercise
//
//  Created by 권태우 on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblAnimal: UILabel!
    @IBOutlet weak var imgAnimal: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgAnimal.image = UIImage(named: StaticAnimal.imgName)
//        lblAnimal.text = "이 동물의 이름은 \(StaticAnimal.name)이며 분류는 \(StaticAnimal.species)이며 날 수 "
//        if StaticAnimal.canFly{
//            lblAnimal.text! += "있습니다. "
//        }else{
//            lblAnimal.text! += "없습니다. "
//        }
        if StaticAnimal.canFly{
            lblAnimal.text = "이 동물의 이름은 \(StaticAnimal.name)이며 분류는 \(StaticAnimal.species)이며 날 수 있습니다. "
        }else{
            lblAnimal.text = "이 동물의 이름은 \(StaticAnimal.name)이며 분류는 \(StaticAnimal.species)이며 날 수 없습니다. "
        }
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

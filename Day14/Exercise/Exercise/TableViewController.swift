//
//  TableViewController.swift
//  Exercise
//
//  Created by 권태우 on 2022/09/17.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var tvAnimals: UITableView!
    var dataArray: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        dataInit()
    }
    
    func dataInit() {
        dataArray.append(Animal(name: "벌", imgName: "bee", species: "벌류", canFly: true))
        dataArray.append(Animal(name: "고양이", imgName: "cat", species: "포유류", canFly: false))
        dataArray.append(Animal(name: "젖소", imgName: "cow", species: "포유류", canFly: false))
        dataArray.append(Animal(name: "강아지", imgName: "dog", species: "포유류", canFly: false))
        dataArray.append(Animal(name: "여우", imgName: "fox", species: "포유류", canFly: false))
        dataArray.append(Animal(name: "원숭이", imgName: "monkey", species: "영장류", canFly: false))
        dataArray.append(Animal(name: "돼지", imgName: "pig", species: "포유류", canFly: false))
        dataArray.append(Animal(name: "늑대", imgName: "wolf", species: "포유류", canFly: false))
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)

        cell.textLabel?.text = dataArray[indexPath.row].name
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].imgName)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    // 삭제시 Delete -> 삭제
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let itemToMove = dataArray[fromIndexPath.row]
        dataArray.remove(at: fromIndexPath.row)
        dataArray.insert(itemToMove, at: to.row)
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let cell = sender as! UITableViewCell
        let indexPath = tvAnimals.indexPath(for: cell)
        StaticAnimal.name = dataArray[indexPath!.row].name
        StaticAnimal.imgName = dataArray[indexPath!.row].imgName
        StaticAnimal.species = dataArray[indexPath!.row].species
        StaticAnimal.canFly = dataArray[indexPath!.row].canFly
    }

}

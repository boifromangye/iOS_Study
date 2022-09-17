//
//  TableViewController.swift
//  Table
//
//  Created by 권태우 on 2022/09/17.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var tvListView: UITableView!
    
    var dataArray: [ToDoList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Long Press
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(sender:)))
        tvListView.addGestureRecognizer(longPress)

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationItem.leftBarButtonItem = editButtonItem
    }
    
    func dataInit() {
        dataArray.append(ToDoList(items: "책 구매", itemsImageFile: "cart"))
        dataArray.append(ToDoList(items: "철수와 약속", itemsImageFile: "clock"))
        dataArray.append(ToDoList(items: "스터디 준비", itemsImageFile: "pencil"))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        tvListView.reloadData()
    }
    
    func appendData() {
        if Message.check == "New"{
            dataArray.append(ToDoList(items: Message.item, itemsImageFile: Message.itemsImageFile))
            Message.check = "Old"
        }
    }

    // Long Press Action
    @objc func handleLongPress(sender: UILongPressGestureRecognizer){
        if sender.state == .began{
            let touchPoint = sender.location(in: tableView)
            if tvListView.indexPathForRow(at: touchPoint) != nil{
                let touchNumber = tvListView.indexPathForRow(at: touchPoint)![1]
                alertDialog(touchNumber)
            }
        }
    }
    
    func alertDialog(_ touchNumber: Int) {
        let addAlert = UIAlertController(title: "ToDoList", message: "수정할 내용을 입력하세요.", preferredStyle: .alert)
        addAlert.addTextField{addText in
            addText.text = self.dataArray[touchNumber].items
        }
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        let editAction = UIAlertAction(title: "수정", style: .destructive, handler: { ACTION in
            self.dataArray[touchNumber].items = addAlert.textFields![0].text!
            self.tvListView.reloadData()
        })
        
        addAlert.addAction(cancelAction)
        addAlert.addAction(editAction)
        
        present(addAlert, animated: true, completion: nil)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = dataArray[indexPath.row].items
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].itemsImageFile)
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
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell
            let indexPath = tvListView.indexPath(for: cell)
            Message.item = dataArray[indexPath!.row].items
            Message.itemsImageFile = dataArray[indexPath!.row].itemsImageFile
        }
    }

}

//
//  HomeVC.swift
//  MultipleUITVtask-1
//
//  Created by ADMIN on 15/05/25.
//

import UIKit

class HomeVC: UIViewController ,UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tcell.Item.text = ItemsList[indexPath.row]
        return tcell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SelectedItem = ItemsList[indexPath.row]
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let itemlistVC = sb.instantiateViewController(withIdentifier: "itemlistvc") as! ItemListVC
        itemlistVC.recivedItem = SelectedItem
        navigationController?.pushViewController(itemlistVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var ItemsList = ["Fruits","Vegetables","Grocery"]
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

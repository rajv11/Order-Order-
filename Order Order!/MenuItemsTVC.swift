//
//  MenuItemsTVC.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import UIKit

class MenuItemsTVC: UITableViewController {
    var restaurant:Restaurant!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        self.navigationItem.title = restaurant.name
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.menuItems.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItems", for: indexPath)
        cell.textLabel?.text = restaurant.menuItems[indexPath.row].name
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "menuDetails" {
            let  menuDetailsTVC = segue.destination as! MenuItemDetailsVC
            menuDetailsTVC.menuItem = restaurant.menuItems[tableView.indexPathForSelectedRow!.row]
        }
        if segue.identifier == "addItem" {
            let dest = segue.destination as! AddNewMenuItemVC
            dest.restaurant = self.restaurant
        }
    }
    @IBAction func addNewMenuItem(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func cancelNewMenuItem(unwindSegue: UIStoryboardSegue) {
        
    }
    
}

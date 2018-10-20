//
//  RestaurantTVC.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import UIKit

class RestaurantTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return FoodCourt.foodCourt.numberOfRestaurants()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        FoodCourt.foodCourt.setSelectedrestaurantIndex(indexPath.row)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath)
        let nameLBL = cell.viewWithTag(100) as! UILabel
        let hoursLBL = cell.viewWithTag(200) as! UILabel
        let img = cell.viewWithTag(300) as!UIImageView
        
        nameLBL.text = FoodCourt.foodCourt[indexPath.row].name
        hoursLBL.text = "\(FoodCourt.foodCourt[indexPath.row].openingTime) - \(FoodCourt.foodCourt[indexPath.row].closingTime)"
        if indexPath.row < 4 {
            img.image = UIImage(named: "\(FoodCourt.foodCourt[indexPath.row].name).png")
        } else {
            img.image = UIImage(named: "restaurant.png")
        }
        
        return cell
    }
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "menu" {
    //            let  menuItemsTVC = segue.destination as! MenuItemsTVC
    //            menuItemsTVC.restaurant = FoodCourt.foodCourt[tableView.indexPathForSelectedRow!.row]
    //        }
    //    }
    @IBAction func addNewRestaurant(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func cancelNewRestaurant(unwindSegue: UIStoryboardSegue) {
        
    }
}

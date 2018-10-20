//
//  AddNewRestaurantVC.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import UIKit

class AddNewRestaurantVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var openTimeTF: UITextField!
    @IBOutlet weak var closeTimeTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func display(title:String, msg:String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "addNewRestaurant" {
            if let name = nameTF.text, let openTime:Int = Int(openTimeTF.text!), let closeTime:Int = Int(closeTimeTF.text!) {
                
                let restaurantToAdd = Restaurant(name: name, openingTime: openTime, closingTime: closeTime, menuItems: [])
                
                FoodCourt.foodCourt.add(restaurant: restaurantToAdd)
                print(FoodCourt.foodCourt.numberOfRestaurants())
            } else {
                display(title: "Oops", msg: "Please Enter Valid Restaurant Details")
            }
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

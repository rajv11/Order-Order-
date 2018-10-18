//
//  AddNewMenuItemVC.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import UIKit

class AddNewMenuItemVC: UIViewController {
    var restaurant:Restaurant!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var costTF: UITextField!
    @IBOutlet weak var caloriesTF: UITextField!
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addNewMenuItem" {
            if let name = nameTF.text, let cost:Double = Double(costTF.text!), let calories:Double = Double(caloriesTF.text!) {
                
                restaurant.menuItems.append(MenuItems(name: name,cost: cost, calories: calories))
            } else {
                display(title: "Oops", msg: "Please Enter Valid Menu Details")
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

//
//  MenuItemDetailsVC.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import UIKit

class MenuItemDetailsVC: UIViewController {
    var menuItem:MenuItems!
    @IBOutlet weak var costLBL: UILabel!
    @IBOutlet weak var caloriesLBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = menuItem.name
        costLBL.text = "\(menuItem.cost)"
        caloriesLBL.text = "\(menuItem.calories)"
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

//
//  Restaurant.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import Foundation
class Restaurant {
    var name:String
    var openingTime:Double
    var closingTime:Double
    var menuItems:[MenuItems]
    
    init(name:String, openingTime:Double, closingTime:Double, menuItems:[MenuItems]) {
        self.name = name
        self.openingTime = openingTime
        self.closingTime = closingTime
        self.menuItems = menuItems
    }
}

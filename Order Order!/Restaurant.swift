//
//  Restaurant.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import Foundation
struct Restaurant {
    var name:String
    var openingTime:Int
    var closingTime:Int
    var menuItems:[MenuItems]
    
    init(name:String, openingTime:Int, closingTime:Int, menuItems:[MenuItems]) {
        self.name = name
        self.openingTime = openingTime
        self.closingTime = closingTime
        self.menuItems = menuItems
    }
}

//
//  FoodCourt.swift
//  Order Order!
//
//  Created by student on 10/17/18.
//  Copyright © 2018 nwmsu. All rights reserved.
//

import Foundation
struct FoodCourt {
    static var foodCourt:FoodCourt = FoodCourt()
    var selectedRestaurantIndex:Int!
    private var restaurants:[Restaurant]
    
    let menuItems = [MenuItems(name: "pizza", cost: 30.5, calories: 67.9), MenuItems(name: "sandwich", cost: 32.5, calories: 45.9)]
    
    init() {
        restaurants = [Restaurant(name: "Einstien Bros", openingTime: 10, closingTime: 7, menuItems:menuItems), Restaurant(name: "Planet Sub", openingTime: 2, closingTime: 6, menuItems: menuItems), Restaurant(name: "Subway", openingTime: 3, closingTime: 7, menuItems: menuItems), Restaurant(name: "Applebees", openingTime: 4, closingTime: 8, menuItems: menuItems)]
    }
    mutating func setSelectedrestaurantIndex(_ index:Int) {
        selectedRestaurantIndex = index
    }
    func selectedRestaurant() -> Restaurant {
        return restaurants[selectedRestaurantIndex]
    }
    mutating func addMenuItemToSelectedRestaurant(_ menuItem:MenuItems) {
        self.restaurants[selectedRestaurantIndex].menuItems.append(menuItem)
    }
    mutating func add(restaurant:Restaurant) {
        self.restaurants.append(restaurant)
    }
    func numberOfRestaurants() -> Int {
        return self.restaurants.count
    }
    
    subscript(_ index:Int) -> Restaurant {
        return restaurants[index]
    }
}

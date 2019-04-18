//
//  CoffeeMachine.swift
//  AssignmentFourTwo
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit
import Foundation

class CoffeeMachine: NSObject {
    var amountOfCoffee = 0
    var amountOfWater = 0
    var amountOfMilk = 0
    var tray = 0
    
    func addCoffee() {
        self.amountOfCoffee += 100
    }
    func addWater() {
        self.amountOfWater += 500
    }
    func addMilk() {
        self.amountOfMilk += 250
    }
    func clearTray() {
        if tray == 0 {
            print("Coffee Machine's tray is clear")
        } else {
            print("Need to clean")
        }
        tray = 0
    }

}

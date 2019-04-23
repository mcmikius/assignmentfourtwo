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
    var state = false
    var machineResponse = "Coffee Machine Off"
    
    
    func power() {
        state = !state
        print(state)
    }
    func addCoffee() {
        self.amountOfCoffee += 100
        machineResponse = "Added 100 mg coffee"
    }
    func addWater() {
        self.amountOfWater += 500
        machineResponse = "Added 500ml water"
    }
    func addMilk() {
        self.amountOfMilk += 250
        machineResponse = "Added 250ml milk"
    }
    func clearTray() {
        if tray == 0 {
            machineResponse = "Coffee Machine's tray is clear"
        } else {
            machineResponse = "Need to clean"
        }
        tray = 0
    }
    func checkCoffeeMachineState() {
        machineResponse = "Now Coffee Machine has \(amountOfMilk)ml of milk, \(amountOfWater)ml of water, \(amountOfCoffee)mg of coffee"
    }
    func makeEspresso() {
        if amountOfWater < 50 {
            machineResponse = "Not enough water"
        }
        if amountOfCoffee < 10 {
            machineResponse = "Not enough coffee"
        }
        if tray >= 50 {
            machineResponse = "waste tray full"
        }
        if amountOfWater >= 50 && amountOfCoffee >= 10 && tray <= 45 {
            amountOfWater -= 50
            amountOfCoffee -= 10
            tray += 10
            machineResponse = "Your espresso is ready!"
        }
    }
    func makeLatte() {
        if amountOfWater < 150 {
            machineResponse = "Not enough water"
        }
        if amountOfCoffee < 20 {
            machineResponse = "Not enough coffee"
        }
        if amountOfMilk < 100 {
            machineResponse = "Not enough milk"
        }
        if tray >= 50 {
            machineResponse = "waste tray full"
        }
        if amountOfWater >= 150 && amountOfCoffee >= 20 && amountOfMilk >= 100 && tray <= 45 {
            amountOfWater -= 150
            amountOfCoffee -= 20
            amountOfMilk -= 100
            tray += 20
            machineResponse = "Your latte is ready!"
        }
    }
    func makeAmericanoWithMilk() {
        if amountOfWater < 100 {
            machineResponse = "Not enough water"
        }
        if amountOfCoffee < 20 {
            machineResponse = "Not enough coffee"
        }
        if amountOfMilk < 50 {
            machineResponse = "Not enough milk"
        }
        if tray >= 50 {
            machineResponse = "waste tray full"
        }
        if amountOfWater >= 100 && amountOfCoffee >= 20 && amountOfMilk >= 50 && tray <= 45 {
            amountOfWater -= 100
            amountOfCoffee -= 20
            amountOfMilk -= 50
            tray += 20
            machineResponse = "Your americano with milk is ready!"
        }
    }
    func makeAmericanoWithoutMilk() {
        if amountOfWater < 100 {
            machineResponse = "Not enough water"
        }
        if amountOfCoffee < 20 {
            machineResponse = "Not enough coffee"
        }
        if tray >= 50 {
            machineResponse = "waste tray full"
        }
        if amountOfWater >= 100 && amountOfCoffee >= 20 && amountOfMilk >= 50 && tray <= 45 {
            amountOfWater -= 100
            amountOfCoffee -= 20
            tray += 20
            machineResponse = "Your americano without milk is ready!"
        }
    }

}

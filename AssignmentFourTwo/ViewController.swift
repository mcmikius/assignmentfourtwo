//
//  ViewController.swift
//  AssignmentFourTwo
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coffeeMachine = CoffeeMachine()

    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeMachine.addWater()
        print(coffeeMachine.machineResponse)
        coffeeMachine.addMilk()
        print(coffeeMachine.machineResponse)
        coffeeMachine.addCoffee()
        print(coffeeMachine.machineResponse)
        coffeeMachine.checkCoffeeMachineState()
        print(coffeeMachine.machineResponse)
        coffeeMachine.makeEspresso()
        print(coffeeMachine.machineResponse)
        coffeeMachine.checkCoffeeMachineState()
        print(coffeeMachine.machineResponse)
        coffeeMachine.makeLatte()
        print(coffeeMachine.machineResponse)
        coffeeMachine.makeAmericanoWithMilk()
        print(coffeeMachine.machineResponse)
        coffeeMachine.checkCoffeeMachineState()
        print(coffeeMachine.machineResponse)
        coffeeMachine.makeLatte()
        print(coffeeMachine.machineResponse)
        coffeeMachine.clearTray()
        print(coffeeMachine.machineResponse)
        coffeeMachine.makeAmericanoWithMilk()
        print(coffeeMachine.machineResponse)
        coffeeMachine.checkCoffeeMachineState()
        print(coffeeMachine.machineResponse)
    }


    
    
}


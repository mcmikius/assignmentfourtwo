//
//  ViewController.swift
//  AssignmentFourTwo
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayInfo: UILabel!
    
    let coffeeMachine = CoffeeMachine()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        displayInfo.text = coffeeMachine.machineResponse
        
    }
    

    @IBAction func powerTap(_ sender: UIButton) {
        coffeeMachine.power()
        if !coffeeMachine.state {
            displayInfo.text = "Coffee Machine Off"
            
        } else {
            displayInfo.text = "Coffee Machine On"
        }
    }
    
    @IBAction func showCoffeeMachineState(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.checkCoffeeMachineState()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func addCoffeeTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.addCoffee()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func addWaterTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.addWater()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func addMilkTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.addMilk()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func clearTrayTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.clearTray()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    
    @IBAction func makeAmericanoWithMilkTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.makeAmericanoWithMilk()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func makeAmericanoWithoutMilkTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.makeAmericanoWithoutMilk()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func makeEspressoTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.makeEspresso()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    @IBAction func makeLateTap(_ sender: UIButton) {
        if coffeeMachine.state {
            coffeeMachine.makeLatte()
            displayInfo.text = coffeeMachine.machineResponse
        }
    }
    
    
    
    
}


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
    
    
    
}


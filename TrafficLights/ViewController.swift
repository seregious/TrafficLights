//
//  ViewController.swift
//  TrafficLights
//
//  Created by Сергей Иванчихин on 03.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    var count = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 1
        redLight.layer.cornerRadius = 75
        
        yellowLight.alpha = 0.2
        yellowLight.layer.cornerRadius = 75
        
        greenLight.alpha = 0.2
        greenLight.layer.cornerRadius = 75
        
    }
    
    

    @IBAction func switchColor() {
        count += 1
        if count == 4 {
            count = 1
        }
        
        switch count {
        case 1:
            redLight.alpha = 1
            greenLight.alpha = 0.2
        case 2:
            redLight.alpha = 0.2
            yellowLight.alpha = 1
        case 3:
            yellowLight.alpha = 0.2
            greenLight.alpha = 1
        default:
            break
        }
    }
    
}


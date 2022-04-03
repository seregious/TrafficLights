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
    @IBOutlet weak var button: UIButton!
    
    private var count = 0
    private let isOn: CGFloat = 1
    private let isOff: CGFloat = 0.2

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        let cornerRadius = redLight.frame.height / 2
        redLight.layer.cornerRadius = cornerRadius
        yellowLight.layer.cornerRadius = cornerRadius
        greenLight.layer.cornerRadius = cornerRadius
    }
    
    @IBAction func switchColor() {
        button.setTitle("Next", for: .normal)
        
        count += 1
        if count == 4 {
            count = 1
        }
        
        switch count {
        case 1:
            greenLight.alpha = isOff
            redLight.alpha = isOn
        case 2:
            redLight.alpha = isOff
            yellowLight.alpha = isOn
        case 3:
            yellowLight.alpha = isOff
            greenLight.alpha = isOn
        default:
            break
        }
    }
    
}


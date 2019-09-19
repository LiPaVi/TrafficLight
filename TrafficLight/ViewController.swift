//
//  ViewController.swift
//  TrafficLight
//
//  Created by Palacheva Lidiya Vitalevna on 19/09/2019.
//  Copyright © 2019 Palacheva Lidiya Vitalevna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var redLight: UIView!
    @IBOutlet private var yellowLight: UIView!
    @IBOutlet private var greenLight: UIView!
    
    @IBOutlet private var changeButton: UIButton!
    
    private let cornerRadius: CGFloat = 64
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = cornerRadius
        yellowLight.layer.cornerRadius = cornerRadius
        greenLight.layer.cornerRadius = cornerRadius
        // Do any additional setup after loading the view.
    }

    @IBAction private func changeButtonPressed() {
        changeButton.setTitle("NEXT", for: .normal)
        
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
    
}


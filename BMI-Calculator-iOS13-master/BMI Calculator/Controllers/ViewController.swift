//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onHeightChanged(_ sender: UISlider) {
        let formattedValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(formattedValue)m"
    }
    
    @IBAction func onWeightChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func onCalculateClicked(_ sender: UIButton) {
        let height = Double(heightSlider.value)
        let weight = Double(weightSlider.value)
        let bmi = weight / (height * height)
        let formattedValue = String(format: "%.2f", bmi)
        let message: String
        
        if bmi < 18.5 {
            message = "You are underweight."
        } else if bmi < 25 {
            message = "You are normal weight."
        } else if bmi < 30 {
            message = "You are overweight."
        } else {
            message = "You are obese."
        }
        
        print(message)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f, \(message)", bmi)
        self.present(secondVC, animated: true, completion: nil)
    }
}


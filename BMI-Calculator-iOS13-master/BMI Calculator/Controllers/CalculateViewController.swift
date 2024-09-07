//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    fileprivate let goToResultViewControllerSegueIdentifier = "goToResult"
    
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
        performSegue(withIdentifier: goToResultViewControllerSegueIdentifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == goToResultViewControllerSegueIdentifier {
            let destinationVC = segue.destination as! ResultViewController
            let bmi = Double(weightSlider.value) / (Double(heightSlider.value) * Double(heightSlider.value))
            destinationVC.bmi = String(format: "%.1f", bmi)
        }
    }
}


//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vinicius Nunes Coscia on 04/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
    }

    @IBAction func onRecalculateClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

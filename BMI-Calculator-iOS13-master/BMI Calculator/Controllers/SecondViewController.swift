//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Vinicius Nunes Coscia on 04/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 400, height: 50)
        
        view.backgroundColor = .white
        view.addSubview(label)
    }
}

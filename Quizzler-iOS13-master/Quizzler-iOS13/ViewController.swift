//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    private let quiz: [[String]] = [
        ["Four + Two is equals to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than ten", "False"]
    ]
    
    private var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func onAnswerSelected(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber >= quiz.count - 1 {
            questionNumber = 0
        } else {
            questionNumber += 1
        }
                
        updateUI()
    }
    
    fileprivate func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionText: String = ""
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var timer = Timer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuiz()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //Local constants
        let userAnswer = sender.currentTitle
        let actualQuestion = quiz[questionNumber]
        let actualAnswer = actualQuestion.answer
        
        //Checking answer correctness
        if userAnswer == actualAnswer {
            //print("Right!")
            sender.backgroundColor = UIColor.green
        }
        else {
            //print("False :(")
            sender.backgroundColor = UIColor.red
        }
        
        //Quiz progression
        if questionNumber < quiz.count-1 {
            questionNumber += 1
            //print(questionNumber)
        }
        else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: false)
        
        //Updating Progress bar
        
    }
     
    @objc func updateQuiz() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
         
        questionText = quiz[questionNumber].text
        questionLabel.text = questionText
        
        print(Float(questionNumber) / Float(quiz.count))
        progressBar.progress = Float(questionNumber+1) / Float(quiz.count)
    }
}


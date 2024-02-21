//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Pattabhi Madhavaram on 2/20/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    
    let quiz = [
        Question(q: "Nithin's nickname is ANNAYYA", a: "True"),
        Question(q: "DP loves/lives movies", a: "True"),
        Question(q: "Dinni   ", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        let actualAnswer = quiz[questionNumber].answer
        if userAnswer == actualAnswer {
            return true
        }
        else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        //Quiz progression
        if questionNumber < quiz.count-1 {
            questionNumber += 1
            //print(questionNumber)
        }
        else {
            questionNumber = 0
        }
    }
}

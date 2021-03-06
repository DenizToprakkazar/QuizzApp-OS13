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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var Score: UILabel!
    
    var quizBrain = QuizBrain()
    
  
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAnswer = sender.currentTitle!
        let answerResult = quizBrain.checkAnswer(userAnswer)
        if answerResult == true
        {
            sender.backgroundColor = UIColor.green
            quizBrain.updateScore()
            
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.5, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
    }
    
    
  @objc func updateUI(){
    Score.text = String(quizBrain.score)
            questionLabel.text = quizBrain.getQuestionText()
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            progressBar.progress = quizBrain.getProgress()
    
    }

}


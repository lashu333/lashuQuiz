//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var score: UILabel!
    weak var delegate: QuizViewControllerProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = "Score: 0"
        updateUI()
    }
    var currentQuestion = 0
    var scoreVariable = 0
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let actualAnswer = questions[currentQuestion].actualAnswer
        if sender.titleLabel?.text == actualAnswer{
            sender.backgroundColor = .green
            scoreVariable+=1
            score.text = "Score: \(scoreVariable)"
        }else{
            sender.backgroundColor = .red
        }
        currentQuestion += 1
        
        if scoreVariable == questions.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                self.congratulate()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                self.updateUI()
            }}
        else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                
                self.updateUI()
            }}
        if currentQuestion >= questions.count{
            let resultView = ResultViewController()
            self.present(resultView, animated: true, completion: nil)
            currentQuestion = 0
            scoreVariable = 0
        }
        
    }
    
    func congratulate(){
        questionLabel.text = "You know me well, we can be friends, but do not look into source code it is embarrasing"
    }
    func updateUI(){
        score.text = "Score: \(scoreVariable)"
        questionLabel.text = questions[currentQuestion].question
        
        answerButton1.setTitle(questions[currentQuestion].getChoice1, for: .normal)
        answerButton2.setTitle(questions[currentQuestion].getChoice2, for: .normal)
        answerButton3.setTitle(questions[currentQuestion].getChoice3, for: .normal)
        
        
        answerButton1.backgroundColor = .blue
        answerButton2.backgroundColor = .blue
        answerButton3.backgroundColor = .blue
        let progress: Float = Float(currentQuestion)/Float(questions.count)
        progressBar.progress = progress
    }
    
}

protocol QuizViewControllerProtocol: AnyObject{
    func gotQuiz(_ quiz: [Question])
}

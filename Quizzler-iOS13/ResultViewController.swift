//
//  ResultViewController.swift
//  Quizzler-iOS13
//
//  Created by Lasha Tavberidze on 22.11.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, QuizViewControllerProtocol{
    
    var questions: [Question] = []
    func gotQuiz(_ quiz: [Question]) {
        let questionsCount = quiz.count
        self.questions = quiz
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        let label = UILabel()
        label.text = "Result \(questions.count)"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}

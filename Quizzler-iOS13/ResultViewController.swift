//
//  ResultViewController.swift
//  Quizzler-iOS13
//
//  Created by Lasha Tavberidze on 22.11.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, QuizViewControllerProtocol{
    
    func gotQuiz(_ quiz: [Question]) {
        let questionsCount = quiz.count
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        let label = UILabel()
        label.text = "Result"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}

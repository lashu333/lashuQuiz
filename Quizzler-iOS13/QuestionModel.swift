//
//  QuestionModel.swift
//  Quizzler-iOS13
//
//  Created by Lasha Tavberidze on 21.11.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    var question: String
    var answers: [String]
    var correctAnswerIndex: Int
    init(question: String, answers: [String], correctAnswer: Int) {
        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswer
    }
    
}
let questions: [Question] = [Question(question: "what year was lashu born?", answers: ["2004","2003","2002"], correctAnswer: 0), Question(question: "what is lashu's favorite item?", answers: ["iphone", "macBook", "wallet"], correctAnswer: 0), Question(question: "what is lashu's favorite food?", answers: ["kimchi fired rice", "lobiani", "both"], correctAnswer: 2)]
 func getAnswer(arrayOfQuestions: [Question], index: Int) -> String {
     var correctAnswerindex = arrayOfQuestions[index].correctAnswerIndex
     return arrayOfQuestions[index].answers[correctAnswerindex]
    
}

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
    var getChoice1: String {
        self.answers[0]
    }
    var getChoice2: String {
        self.answers[1]
    }
    var getChoice3: String {
        self.answers[2]
    }
    var actualAnswer: String {
        self.answers[self.correctAnswerIndex]
    }
    init(question: String, answers: [String], correctAnswer: Int) {
        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswer
    }
    
}
let questions: [Question] = [Question(question: "what year was lashu born?", answers: ["2004","2003","2002"], correctAnswer: 0), Question(question: "what is lashu's favorite item?", answers: ["iphone", "macBook", "wallet"], correctAnswer: 0), Question(question: "what is lashu's favorite food?", answers: ["kimchi fired rice", "lobiani", "both"], correctAnswer: 2)]
func getChoices( arrayOfQ: [Question], index: Int) -> [String]{
    var choices: [String] = []
    for answer in arrayOfQ[index].answers {
        choices.append(answer)
    }
    return choices
}
func displayChoices(choices: [String]){
    
}
func getQuestion(arrayOfQuestions: [Question], index: Int) -> String {
    return arrayOfQuestions[index].question
}
 func getAnswer(arrayOfQuestions: [Question], index: Int) -> String {
     let correctAnswerindex = arrayOfQuestions[index].correctAnswerIndex
     return arrayOfQuestions[index].answers[correctAnswerindex]
    
}

//
//  adventureLogic.swift
//  auAdventure
//
//  Created by Tony Giamboy on 2/9/23.
//

import Foundation

struct adventurelogic {
    var questionIndex: Int = 0
    
    let question = [
        Question("Welcome to Auburn! Would you like to go to a football or baseball game?",
                 "Football",
                 "Baseball",
                 1, 2),
        Question("Great! Auburn Football is a solid choice. Would you rather meet the coach or the band?",
                 "Football Coach",
                 "Band",
                 0, 0),
        Question("Great! Auburn Baseball is a solid choice. Would you rather meet the coach or Aubie?",
                 "Baseball Coach",
                 "Aubie",
                 0, 0),
    ]
    func getNextQuestion() -> String {
        return question[questionIndex].question
    }
    func getChoiceOne() -> String {
        return question[questionIndex].option_one
    }
    func getChoiceTwo() -> String {
        return question[questionIndex].option_two
    }
    mutating func increaseIndex(userChoice: String) {
        let currentQuestion = question[questionIndex]
        if userChoice == currentQuestion.option_one {
            questionIndex = currentQuestion.one_dest
        } else if userChoice == currentQuestion.option_two {
            questionIndex = currentQuestion.two_dest
        }

        
    }
}

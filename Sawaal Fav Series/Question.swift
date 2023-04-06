//
//  Question.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 05/04/23.
//

import Foundation

struct Question {
    
    var question: String
    var options: [String]
    var answer: String
    
    init(question: String, options: [String], answer: String) {
        self.question = question
        self.options = options
        self.answer = answer
    }
    
}



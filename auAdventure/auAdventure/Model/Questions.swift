//
//  Questions.swift
//  auAdventure
//
//  Created by Tony Giamboy on 2/9/23.
//

import Foundation

struct Question {
    init (_ ques: String, _ o_one: String, _ o_two: String, _ d_one: Int, _ d_two: Int) {
        question = ques
        option_one = o_one
        option_two = o_two
        one_dest = d_one
        two_dest = d_two
    }
    var question: String
    var option_one: String
    var option_two: String
    var one_dest: Int
    var two_dest: Int
}

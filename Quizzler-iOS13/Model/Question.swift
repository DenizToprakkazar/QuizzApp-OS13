//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Deniz Toprakkazar on 5.08.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        self.text = q
        self.answer = a
    }
}

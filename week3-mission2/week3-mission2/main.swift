//
//  main.swift
//  week3-mission2
//
//  Created by sonjuhyeong on 2020/11/18.
//

import Foundation


var parentheses = Parentheses.init(with: .round)
_ = parentheses.generate(with: 2)

print(parentheses.analyze(with: "((()))"))

//
//  main.swift
//  week3-mission2
//
//  Created by sonjuhyeong on 2020/11/18.
//

import Foundation


var bracketTest = BracketTest.init(with: .round)
_ = bracketTest.generate(with: 2)

print(bracketTest.analyze(with: "(())()"))


////0.001 값을 1,000번 더하면 1이 되어야 한다.
//print(sum(value: 0.001, repeat: 1000))
////하지만 실행 결과는 1.0000000000000007

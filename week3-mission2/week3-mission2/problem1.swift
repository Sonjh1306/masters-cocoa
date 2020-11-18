//
//  problem1.swift
//  week3-mission2
//
//  Created by sonjuhyeong on 2020/11/18.
//

import Foundation

struct BracketTest{
    var openBracket : String = ""
    var closeBracket : String = ""
    var bracketArr : [String] = []
    var bracketString : String = ""
    var resultBracketArr : [String] = []
    var count : Int = 0
    
    enum Bracket {
        case round
        case square
        case curly
    }
    init(with : Bracket) {
        if with == .round {
            self.openBracket = "("
            self.closeBracket = ")"
        }else if with == .square {
            self.openBracket = "["
            self.closeBracket = "]"
        }else if with == .curly {
            self.openBracket = "{"
            self.closeBracket = "}"
        }
    }
    
    // 하나씩 입력받은 괄호들을 섞어서 String을 합쳐보자.
    mutating func generate(with count:Int) -> [String] {
        
        bracketArr.append(contentsOf: Array(repeating: openBracket, count: count))
        bracketArr.append(contentsOf: Array(repeating: closeBracket, count: count))
        
        // bracketArr 을 섞어서 다시 합치고 resultBracketArr 에 넣는다.
        for _ in 1...(count * 10) {
            bracketArr = bracketArr.shuffled()
            bracketString = bracketArr.joined(separator: "")
            resultBracketArr.append(bracketString)
        }
        
        //
//        for index in resultBracketArr {
//
//        }
//
        print(resultBracketArr)
        return resultBracketArr
    }
    
    // 열린 괄호 +1 , 닫힌 괄호 -1 , 합계 0 면 올바른 괄호
    mutating func analyze(with value: String ) -> Bool {
        let analyzeArr = value.map { String($0) }
        var count = 0
        
        // 처음이 닫혀 있거나 끝이 열려 있으면 false
        if analyzeArr[analyzeArr.count - 1] == openBracket || analyzeArr[0] == closeBracket {
            return false
        }
        for i in analyzeArr {
            if (i == openBracket) {
                count += 1
            }
            else if (i == closeBracket){
                if count <= 0 {
                    return false
                } else {
                    count -= 1
                }
            }
        }

        if count == 0 {
            return true
        } else {
            return false
        }
    }
}




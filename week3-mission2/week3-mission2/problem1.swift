//
//  problem1.swift
//  week3-mission2
//
//  Created by sonjuhyeong on 2020/11/18.
//

import Foundation

struct Parentheses{
    var openBracket : String = ""
    var closeBracket : String = ""
    var bracketArr : [String] = []

    var bracketString : String = ""
    var sumBracketArr : [String] = []
   
    var analyzeArr : [String] = []

    
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
    // values.filter { $0.split(separator: "0").joined() == String(repeating: "1", count: bitcount) }
    // 하나씩 입력받은 괄호들을 섞어서 String을 합쳐보자.
    mutating func generate(with count:Int) -> Array<String> {
        bracketArr.append(String(repeating: String(repeating: openBracket, count: 1), count: count))
        bracketArr.append(String(repeating: String(repeating: closeBracket, count: 1), count: count))
//        bracketString = bracketArr.joined(separator: "")
//        sumBracketArr.append(bracketString)
        print(bracketArr)
        for _ in 1...count {
            bracketArr.append(openBracket)
            bracketArr.append(closeBracket)
            bracketArr = bracketArr.shuffled()
        }
        if bracketArr.count == (count * 2) {
            bracketString = bracketArr.joined(separator: "")
        }
        for _ in 1...count {
            sumBracketArr.append(bracketString)
        }
        print(sumBracketArr)
        return sumBracketArr
    }
    
    // 열린 괄호 +1 , 닫힌 괄호 -1 , 합계 0 면 올바른 괄호
    func analyze(with value: String ) -> Bool {
        let analyzeArr = Array(value)
        var count = 0
        
        if analyzeArr[analyzeArr.count - 1] == "(" {
            return false
        }
        for i in analyzeArr {
            if i == "("{
                count += 1
            }
            else if i == ")"{
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





//for _ in 1...30 {
//    bracketArr.append(firstBracket)
//    bracketArr.append(firstBracket)
//    bracketArr = bracketArr.shuffled()
//    if bracketArr.count == (count * 2) {
//        bracketString = bracketArr.joined(separator: "")
//    }
//    sumBracketArr.append(bracketString)
//}
//for _ in 1...count {
//    sumBracketArr.append(bracketString)
//}
//print(sumBracketArr)
//return bracketArr

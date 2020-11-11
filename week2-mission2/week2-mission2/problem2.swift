//
//  problem2.swift
//  week2-mission2
//
//  Created by sonjuhyeong on 2020/11/11.
//

import Foundation

struct PlayBaseball {
    var strikeCount : Int = 0
    var ballCount : Int = 0
    var answerArray : [Int] = []
    var inputArray : [Int] = []
    
    // 0~9 범위의 3개의 랜덤한 숫자 생성
    func newGame() -> [Int] {
        var randomArray : [Int] = []
        for _ in 0...2 {
            let number = Int.random(in: 0...9)
            randomArray.append(number)
        }
        return randomArray
    }
    
    // 랜덤한 숫자와 입력한 숫자 비교
    mutating func hit(num: Int) -> (strikeCount:Int, ballCount:Int){
        answerArray = newGame()
        var inputArray : [Int] = []
        
        inputArray.append(num/100)
        inputArray.append((num/10) % 10)
        inputArray.append(num%10)
        
        print(answerArray)
        print(inputArray)
        
        for index in 0...2 {
            if inputArray[index] == answerArray[index] {
                strikeCount += 1
            }else if inputArray.contains(answerArray[index]){
                ballCount += 1
            }
        }
        print("스트라이크:\(strikeCount) , 볼:\(ballCount)")
        return (strikeCount,ballCount)
    }
    
    // 9번내에 스트라이크 3개 모두 맞췄으면 성공(true). 아니면 실패(false)
    mutating func showGameScore() -> Bool {

        var answer : Bool = false
        for _ in 0...9 {
            print("입력하세요")
            let newNum = Int(readLine()!)!
            hit(num: newNum)
            if strikeCount == 3 {
                answer = true
            }else{
                answer = false
            }
        }
        return answer
    }
}


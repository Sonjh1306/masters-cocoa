//
//  problem2.swift
//  week2-mission2
//
//  Created by sonjuhyeong on 2020/11/11.
//

import Foundation

struct PlayBaseball {
    func newGame() -> [Int] {
        let firstRandomNum : Int = Int.random(in:0...9)
        let secondRandomNum : Int = Int.random(in:0...9)
        let lastRandomNum : Int = Int.random(in:0...9)
        let randomArray : [Int] = [firstRandomNum,secondRandomNum,lastRandomNum]
        return randomArray
    }
    func hit(num:Int) -> (strikeCount:Int, ballCount:Int){
        var answerArray : [Int] = [num]
        
        
        return
    }
    
    func showGameScore() -> Bool {
        
    }
}

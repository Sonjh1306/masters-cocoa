//
//  LadderGame.swift
//  MakeLadderGame
//
//  Created by sonjuhyeong on 2020/12/03.
//

import Foundation

struct MakeGame {
    func printLadder(player: Int, height: Int){
        var gameArr: [[String]] = [[]]
        
        for row in 1...height {
            var arr: [String] = []
            
            for column in 0...player * 2 - 2 {
                let radomNumber = Int.random(in: 0...1)
                if column % 2 == 0 {
                    arr.append("|")
                }else{
                    if radomNumber == 1 {
                        arr.append("-")
                    }else{
                        arr.append(" ")
                    }
                }
            }
            gameArr.append(arr)
            print(gameArr[row].joined())
        }
    }
    func setPlayer () -> Int {
        print("플레이어 숫자를 입력해주세요.")
        let player: Int = Int(readLine()!)!
        if player < 2 || player > 8{
            exit(0)
        }
        return player
    }
}

//
//  problem1.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

struct ArrayPractice {
   
    func printArray(array: [[Int]], line: Int){
        for index in 0...line - 1 {
            print(array[index].filter({$0 != 0}))
        }
    }
    mutating func fillArray(line: Int) -> [[Int]]{
        var sum: Int = 0
        var makeArr: [[Int]] = Array(repeating: Array(repeating: 0, count: line), count: line)
        
        for row in 0...line - 1 {
            for column in 0...row {
                sum += 1
                makeArr[row][column] = sum
            }
            sum += line - row - 1
        }
        return makeArr
        
    }
    // fillArray와 PrintArray를 한번에 실행하는 함수
    mutating func fillAndPrintArray(line: Int){
        var sum: Int = 1
        
        for row in 0...line - 1 {
            var sumArr: [Int] = []
            for _ in 0...row {
                sumArr.append(sum)
                sum += 1
            }
            sum += line - row - 1
            print(sumArr)
        }
    }
}

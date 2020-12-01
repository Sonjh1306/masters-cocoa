//
//  problem1-2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

struct ArrayPractice2 {
    func setBoolArray(line: Int) -> [[Bool]]{
        var boolArr: [[Bool]] = Array(repeating: Array(repeating: true, count: line), count: line)
        for row in 0...line - 2 {
            for column in 0...line - row - 2 {
                boolArr[row][column] = false
            }
        }
        print(boolArr)
        return boolArr
    }
    
    func printArray(array: Array<Array<Bool>>, line: Int, newChar: Character){
        
        for i in 0...line - 1{
            print(array[i].map{$0 == true  ? "\(newChar)" : " "})
        }
    }
}

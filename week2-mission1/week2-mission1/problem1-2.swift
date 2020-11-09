//
//  problem1-2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

struct ArrayPractice2 {
    func printArray(array : [[Bool]],newChar : Character){
        for i in 0...6 {
            print(array[i].map{$0 == false  ? " ":"\(newChar)" })
        }
    }
    func setBoolArray() -> [[Bool]] {
        var array : [[Bool]] = Array(repeating: Array(repeating: true, count: 7), count: 7)
        for i in 0...5 {
            for j in 0...5-i{
                array[j][i] = false
            }
        }
        return array
    }
}



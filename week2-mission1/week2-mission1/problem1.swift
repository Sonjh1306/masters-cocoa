//
//  problem1.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

struct ArrayPractice {
    func printArray(array : [[Int]]){
        for i in 0...4 {
            print(array[i].filter{$0 != 0})
        }
    }
    func fillArray() -> [[Int]] {
        var array : [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 5)
        var num : Int = 0
        for i in 0...4 {
            for j in 0...i {
                num += 1
                array[i][j] = num
            }
            num = (i * 5) + 5
        }
        return array
    }
}









//
//func makeArray() -> [[Int]]{
//    var arr : [[Int]] = []
//    arr.append([1])
//    arr.append([6,7])
//    arr.append([11,12,13])
//    arr.append([16,17,18,19])
//    arr.append([21,22,23,24,25])
//    return arr
//}

//
//  problem2.swift
//  week3-mission2
//
//  Created by sonjuhyeong on 2020/11/18.
//

import Foundation

func sum(value: Double, repeat: Int) -> Double {
    var sum : Double = 0
    for _ in 1...`repeat` {
        sum += value
    }
    return sum
}

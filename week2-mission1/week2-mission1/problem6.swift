//
//  problem6.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

func duplicatedWords(inputWords: Array<String>) -> Array<String>{
    var wordsDict: [String: Int] = ["가을": 0, "우주": 0, "너굴": 0, "겨울": 0, "봄봄": 0]
    var resultArr: [String] = []
    
    
    for (key,_) in wordsDict {
        for index in inputWords {
            if key == index {
                wordsDict[key]! += 1
            }
        }
    }
    for (key,value) in wordsDict {
        if value > 1 {
            resultArr.append(key)
        }
    }
    return resultArr
}

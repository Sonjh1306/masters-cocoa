//
//  problem4.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

func validResidentRegistrationNumber(number: String) -> Bool{
    var inputArr: [String] = []
    var convertArr: [Int] = []
    var sum: Int = 0
    
    inputArr = number.map{String($0)}
    for index in inputArr {
        if let number = Int(index) {
            convertArr.append(number)
        }
    }
    sum = convertArr[0]*2 + convertArr[1]*3 + convertArr[2]*4 + convertArr[3]*5 + convertArr[4]*6 + convertArr[5]*7 + convertArr[6]*8 + convertArr[7]*9 + convertArr[8]*2 + convertArr[9]*3 + convertArr[10]*4 + convertArr[11]*5
   
    sum = (11 - (sum % 11)) % 10
    if sum == convertArr[12] {
        return true
    }else{
        return false
    }
}

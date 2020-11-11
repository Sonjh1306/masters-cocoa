//
//  problem2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation


func IDValidator(ID : String) -> Bool {
    var checkID = false
    if ID.count >= 5 && ID.count < 24 {
        <#code#>
    }
//    checkID = ID.count >= 5 && ID.count < 24
//    checkID = validChar(ID: ID)
//    checkID = validNumSeries(ID: ID)
//    return checkID
}

//적절한 문자 - 아스키코드 범위를 통해 뽑음
func validChar(ID : String) -> Bool {
    var checkBool : Bool = true
    let arr  = ID.utf16.map{ Int($0) }

    for index in 0..<arr.count {
        if((arr[index] != 45) && (arr[index] < 48 || (arr[index] > 57 && arr[index] < 65) || (arr[index] > 90 && arr[index] < 97) || (arr[index] > 122))){
            checkBool = false
            break // 쓸데없는 시간 줄임
        }
    }

    return checkBool
}

// 연속된 숫자 판별
func validNumSeries(ID: String) -> Bool {
    var checkBool = true
    let seriesNum = ["111", "222", "333", "444", "555", "666", "777", "888", "999", "000", "123", "234", "345", "456", "567", "678", "789", "890", "901", "012"]

    for index in 0..<seriesNum.count {
        if(ID.contains(seriesNum[index])){
            checkBool = false
            break
        }
    }

    return checkBool
}



//func IDValidator(ID:String) -> Bool {
//    var checkID = true
//    // ID 숫자 제한
//    if(ID.count < 5 || ID.count > 24) {
//        checkID = false
//    }// ID 로 적절한 문자를 사용했는지 (대문자, 소문자, 숫자, -)
//    if(!validChar(ID: ID)) {
//        checkID = false
//    }// 연속된 숫자 판별
//    if(!validNumSeries(ID: ID)){
//        checkID = false
//    }
//
//    return checkID
//}
//
////적절한 문자 - 아스키코드 범위를 통해 뽑음
//func validChar(ID : String) -> Bool {
//    var checkBool : Bool = true
//    let arr  = ID.utf16.map{ Int($0) }
//
//    for index in 0..<arr.count {
//        if((arr[index] != 45) && (arr[index] < 48 || (arr[index] > 57 && arr[index] < 65) || (arr[index] > 90 && arr[index] < 97) || (arr[index] > 122))){
//            checkBool = false
//            break // 쓸데없는 시간 줄임
//        }
//    }
//
//    return checkBool
//}
//
//// 연속된 숫자 판별
//func validNumSeries(ID: String) -> Bool {
//    var checkBool = true
//    let seriesNum = ["111", "222", "333", "444", "555", "666", "777", "888", "999", "000", "123", "234", "345", "456", "567", "678", "789", "890", "901", "012"]
//
//    for index in 0..<seriesNum.count {
//        if(ID.contains(seriesNum[index])){
//            checkBool = false
//            break
//        }
//    }
//
//    return checkBool
//}

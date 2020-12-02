//
//  problem3.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation

func PasswordValidator(password : String) -> Int {
    var passwordLevel: Int = 0
    let passwordArr  = password.utf8.map{ Int($0) }
    var count: Int = 0
    var number: Int = 0
    var english: Int = 0
    var specialChar: Int = 0
    
    // 문자열의 갯수 체크
    if passwordArr.count >= 8 {
        count = 1
    }
    for index in 0..<passwordArr.count {
        // 숫자 체크
        if passwordArr[index] >= 48 && passwordArr[index] <= 57 {
            number = 1
        }else if (passwordArr[index] >= 65 && passwordArr[index] <= 90) || (passwordArr[index] >= 97 && passwordArr[index] <= 122){
            english = 2
        }else if (passwordArr[index] >= 33 && passwordArr[index] <= 47) || (passwordArr[index] >= 58 && passwordArr[index] <= 64) || (passwordArr[index] >= 91 && passwordArr[index] <= 95) || (passwordArr[index] >= 123 && passwordArr[index] <= 126){
            specialChar = 1
        }else{
            passwordLevel = 3
        }
       
    }
    passwordLevel = count + number + english + specialChar
    print("Password Level: \(passwordLevel)")
    return passwordLevel
}

//
//  problem2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

// 조건1: 5글자 미만이거나 24글자 이상이면 실패
// 조건2: 영문 대소문자, 숫자, -만 포함 가능하고 그 외에는 실패
// 조건3: 같은 숫자가 연속해서 3회 이상 나오면 실패 111, 222
// 조건4: 숫자가 연번으로 3개나오면 실패 123, 234
// 위 조건을 모두 통과하면 성공

import Foundation

struct MakeIDValidator {
    
    func IDValidator(id: String) -> Bool {
        if id.count < 5 || id.count >= 24 {
            return false
        }else if validChar(id: id) == false{
            return false
        }else if validNumSeries(id: id) == false{
            return false
        }else{
            return true
        }
    }
    
    func validChar(id : String) -> Bool {
        var result: Bool = true
        let idArr  = id.utf8.map{ Int($0) }
 
        for index in 0..<idArr.count {
            if (idArr[index] >= 0 && idArr[index] <= 44) || (idArr[index] >= 46 && idArr[index] <= 47) || (idArr[index] >= 58 && idArr[index] <= 64) || (idArr[index] >= 91 && idArr[index] <= 96) || idArr[index] >= 123{
                result = false
            }
        }
        return result
    }
    
    func validNumSeries(id: String) -> Bool {
        var result: Bool = true
        let seriesNum = ["111", "222", "333", "444", "555", "666", "777", "888", "999", "000", "123", "234", "345", "456", "567", "678", "789", "890", "901", "012"]
        
        for index in 0..<seriesNum.count {
            if(id.contains(seriesNum[index])){
                result = false
            }
        }
        return result
    }
    

}


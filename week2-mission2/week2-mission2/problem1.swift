//
//  problem1.swift
//  week2-mission2
//
//  Created by sonjuhyeong on 2020/11/11.
//

import Foundation

struct RateOfInterest {
    
    func getInterestRate(byDay:Int) -> Double {
        var rate : Double = 0
        if byDay > 0 && byDay <= 90 {
            rate = 0.005
        }else if (byDay > 90 && byDay < 181) {  // 3개월~6개월
            rate = 0.01
        }else if (byDay > 180 && byDay < 365) { // 6개월~12개월
            rate = 0.02
        }else if byDay >= 365 { // 12개월 이상
            rate = 0.056
        }
        return rate
    }
    
    func calculateAmount(day:Int, amount:Int) -> Double {
        var returnAmount : Double = 0
        returnAmount = Double(amount) + (Double(amount) * (getInterestRate(byDay: day) / 365) * Double(day))
        return returnAmount
    }
}

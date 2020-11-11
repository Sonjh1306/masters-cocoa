//
//  main.swift
//  week2-mission2
//
//  Created by sonjuhyeong on 2020/11/11.
//

import Foundation

////연습문제 1
var money = RateOfInterest()
print(money.calculateAmount(day: 120, amount: 1000000))

func testInterest(unitDay : Int) -> Double {
    let firstAmount : Double = 1000000
    var totalAmount : Double = 0.0

    if unitDay == 1 {
        for i in 1...365 {
            totalAmount = firstAmount + firstAmount * (money.getInterestRate(byDay: i) / 365) * Double(i)
            print("\(i)일 : \(totalAmount) 입니다.")
        }
    }else if unitDay == 10{
        for i in stride(from: 10, through: 365, by: 10) {
            totalAmount = firstAmount + firstAmount * (money.getInterestRate(byDay: i) / 365) * Double(i)
            print("\(i)일 : \(totalAmount) 입니다.")
        }
    }else {
        exit(0)
    }
    return totalAmount
}
testInterest(unitDay:1)
print("======================")
testInterest(unitDay: 10)



//연습문제 2
var game = PlayBaseball()
print(game.showGameScore())

//
//  problem2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation


func IDValidator(password : String) -> Bool {
    let passwordreg = ("(?=.*[A-Za-z])(?=.*[0-9]).{5,24}")
    let passwordtesting = NSPredicate(format: "SELF MATCHES %@", passwordreg)
    return passwordtesting.evaluate(with: password)
}


//
//  problem2.swift
//  week2-mission1
//
//  Created by sonjuhyeong on 2020/11/09.
//

import Foundation


func IDValidator(id : String) -> Bool {
    let idreg = ("(?=.*[A-Za-z])(?=.*[0-9]).{5,24}")
    let idtesting = NSPredicate(format: "SELF MATCHES %@", idreg)
    return idtesting.evaluate(with: id)
}


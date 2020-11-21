//
//  SpecialBinaryNumber.swift
//  week3-mission1
//
//  Created by sonjuhyeong on 2020/11/16.
//

import Foundation

struct BinaryNumber {
    var total : Int = 0
    var count : Int = 0
    private var values : [String]  = []
    var convertArr : Array<String> = []
    var resultArr : [String] = []
    
    init(with total : Int){
        self.total = total
        self.count = Int(pow(2.0, Double(total)))
        
        // count = 2^total , 자리수 : count - 1 ex) total : 5 , count : 2^5 = 32 , count-1 = 31이 5자리 가장 큰 수
        for i in 0...count-1 {
            let a : Int = i
            // 2진수로 바꾸고
            if let b = Int(String(a,radix: 2)){
                values.append(String(format: "%0\(total)d", b))
            }
        }
        print(values)
    }
    
    func find (by bitcount: Int) -> [String] {
        let filteredArray = values.filter { $0.split(separator: "0").joined() == String(repeating: "1", count: bitcount) }
                return filteredArray
    }
    
    
}



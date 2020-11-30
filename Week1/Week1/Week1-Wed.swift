//
//  Week1-Wed.swift
//  Week1
//
//  Created by sonjuhyeong on 2020/11/30.
//

import Foundation

struct Wednesday {
    // 미션1. printXY()
    func printXY(max : Int){
        for _ in 0...max - 1 {
            for i in 1...max {
                print(i,terminator:" ")
            }
            print()
        }
    }
    
    // 미션2. printLeftTree()
    func printLeftTree(lines : Int){
        for i in 0...lines - 1 {
            for _ in 0...i {
                print("🎈",terminator:" ")
            }
            print()
        }
    }
    
    // 미션3. printRightTree()
    func printRightTree(lines : Int){
        for i in 0...lines - 1 {
            for _ in 1...lines - i {
                print("  ",terminator:" ")
            }
            for _ in 0...i {
                print("🎈",terminator:" ")
            }
            print()
        }
    }
    
    // 미션4. printCenterTree()
    func printCenterTree(lines : Int){
        for i in 0...lines - 1 {
            for _ in 0...lines - i - 1 {
                print("",terminator:" ")
            }
            for _ in 0...i {
                print("🎈",terminator:" ")
            }
            print()
        }
    }
    
    // 미션5-1. printNumbers()
    func printNumbers(lines : Int){
        var sum : Int = 0
        for i in 0...lines - 1 {
            for _ in 0...i {
                sum += 1
                print(sum,"",terminator:" ")
            }
            print()
        }
    }
    
    // 미션5-2. printSquare()
    func printSquare(columns : Int){
        var sum: Int = 0
        for _ in 0...columns - 1 {
            for _ in 0...columns - 1 {
                sum += 1
                print(sum,"",terminator:" ")
            }
            print()
        }
    }
    
    // 미션5-3. printReverse()
    func printReverse(lines : Int){
        var sum: Int = 0
        for i in 0...lines - 1 {
            if i % 2 == 1 {
                sum += lines
                for _ in 0...lines - 1 {
                    print(sum,"",terminator:" ")
                    sum -= 1
                }
            }else if i > 0{
                sum += lines
                for _ in 0...lines - 1 {
                    sum += 1
                    print(sum,"",terminator:" ")
                }
            }else{
                for _ in 0...lines - 1 {
                    sum += 1
                    print(sum,"",terminator:" ")
                }
            }
            print()
        }
    }
    
    // 미션6. printDiamond()
    func printDiamond(lines : Int){
        for i in 0...lines - 1 {
            if i % 2 == 0 {
                for _ in 0...lines - i - 1 {
                    print("",terminator:" ")
                }
                for _ in 0...i {
                    print("*",terminator:" ")
                }
                print()
            }
        }
        for j in 0..<lines / 2 {
            if j % 2 == 0 {
                for _ in 0...j {
                    print("  ",terminator:" ")
                }
                for _ in 0...lines - j {
                    print("*",terminator:" ")
                }
                print()
            }
        }
    }
    
    // 미션7. print3515()
    func print3515(lines : Int)->Array<String>{
        var outputArr: [String] = []
        for i in 1...lines {
            if i % 3 == 0 && i % 5 == 0 {
                outputArr.append("👏🏼🙏")
            }else if i % 3 == 0{
                outputArr.append("👏🏼")
            }else if i % 5 == 0{
                outputArr.append("🙏")
            }else{
                outputArr.append(String(i))
            }
        }
        print(outputArr)
        return outputArr
    }
}

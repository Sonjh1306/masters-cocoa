//
//  Week1-Mon.swift
//  Week1
//
//  Created by sonjuhyeong on 2020/11/30.
//

import Foundation

struct Monday {
    func convertToCM(fromInches : Float) -> Float{
        let result : Float = fromInches * 2.54
        return result
    }
    func convertToInches(fromCM : Float) -> Float{
        let result : Float = fromCM / 2.54
        return result
    }
    func convertToInches(fromMeter : Float) -> Float{
        let result : Float = fromMeter * 100 / 2.54
        return result
    }
    
    // 추가문제
    func converter(inputNum:Double,inputUnit:String,convertUnit:String?){
        var result : Double = 0
        var resultUnit : String = ""
        
        if inputUnit == "inch" && convertUnit == "cm" {
            result = inputNum * 2.54
            resultUnit = convertUnit ?? ""
        }else if inputUnit == "inch" && convertUnit == "cm" {
            result = inputNum * 0.39
            resultUnit = convertUnit ?? ""
        }else if inputUnit == "m" && convertUnit == "inch"{
            result = inputNum * 39
            resultUnit = convertUnit ?? ""
        }else if inputUnit == "inch" && convertUnit == "m"{
            result = inputNum * 0.0254
            resultUnit = convertUnit ?? ""
        }else if inputUnit == "cm"{
            result = inputNum * 0.01
            resultUnit = "m"
        }else if inputUnit == "m"{
            result = inputNum * 100
            resultUnit = "cm"
        }else if inputUnit == "inch"{
            result = inputNum * 2.54
            resultUnit = "cm"
        }
        print("\(result)\(resultUnit)")
    }
}


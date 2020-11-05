//
//  main.swift
//  Week1
//
//  Created by sonjuhyeong on 2020/11/05.
//

import Foundation

//단위 변환 2020.11.02(월)
func convertToCM(fromInches : Float) -> Float{
    let result : Float = fromInches * 2.54
    return result
}
print("\(convertToCM(fromInches: 50))cm")
print("\(convertToCM(fromInches: 15))cm")


func convertToInches(fromCM : Float) -> Float{
    let result : Float = fromCM / 2.54
    return result
}
print("\(convertToInches(fromCM: 254))inch")
print("\(convertToInches(fromCM: 75))inch")

func convertToInches(fromMeter : Float) -> Float{
    let result : Float = fromMeter * 100 / 2.54
    return result
}
print("\(convertToInches(fromMeter: 1.5))inch")
print("\(convertToInches(fromMeter: 0.4))inch")

//point를 넘기면 학점 “A”, “B”, “C”, “D”, “F”을 리턴하세요
func whatIsGrade(point : Int) -> Character{
    if (point >= 90) {
        return "A"
    }else if(point >= 80){
        return "B"
    }else if(point >= 70){
        return "C"
    }else if(point >= 60){
        return "D"
    }else{
        return "F"
    }
}
print(whatIsGrade(point: 95))



// Struct , 2020.11.03(화)
/*
//연습문제1
//미션1. Rectangle
struct Rectangle {
    var leftTopX : Int
    var leftTopY : Int
    var rightBottomX : Int
    var rightBottomY : Int
}

func printRect(rectangle : Rectangle){
    print("leftTop : (\(rectangle.leftTopX) , \(rectangle.leftTopY)) , rightBottom : (\(rectangle.rightBottomX), \(rectangle.rightBottomY))")
}

//미션2. 호출하기
var rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)

printRect(rectangle: rect)

//미션3. printArea()
func printArea(rectangle : Rectangle){
    let width =  rect.rightBottomX - rect.leftTopX
    let height = rect.leftTopY - rect.rightBottomY
    print((width*height))
}
printArea(rectangle: rect)
*/
//미션4.  Float형
struct Rectangle {
    var leftTopX : Float
    var leftTopY : Float
    var rightBottomX : Float
    var rightBottomY : Float
}
func printRect(rectangle : Rectangle){
    print("leftTop : (\(rectangle.leftTopX) , \(rectangle.leftTopY)) , rightBottom : (\(rectangle.rightBottomX), \(rectangle.rightBottomY))")
}
var rect = Rectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15, rightBottomY: 3.5)
printRect(rectangle: rect)


//미션5. center
func printCenter(rectangle : Rectangle){
    let x = (rect.rightBottomX + rect.leftTopX) / 2
    let y = (rect.leftTopY + rect.rightBottomY) / 2
    print("center : (\(x),\(y))")
}
printCenter(rectangle: rect)


//연습문제2
//미션1. MyPoint
struct MyPoint {
    var myX : Float
    var myY : Float
}

func printPoint(mypoint : MyPoint){
    print("point: (\(mypoint.myX),\(mypoint.myY))")
}

var pointA = MyPoint(myX: 2.5, myY: 15.8)
printPoint(mypoint: pointA)



/*
// switch - case
let someCharacter : Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount : String
switch approximateCount{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("(0,0) is at the origin")
case (_,0):
    print("(\(somePoint.0),0) is on the x-axis")
case (0,_):
    print("(0,\(somePoint.1)) is on the y-axis")
case (-2...2,-2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("\(somePoint.0), \(somePoint.1)) is outside of the box")
}
*/


//미션 , 2020.11.04(수)
//미션1. printXY()
func printXY(max : Int){
    let intArray :[Int] = Array(1...max)
    for _ in 1...max {
        print(intArray)
    }
}
printXY(max: 3)

printXY(max: 5)


//미션2. printLeftTree()
func printLeftTree(lines : Int){
    for n in 1...lines {
        var returnString : String = ""
        var str : String = ""
        var i : Int = 0

        while i < n {
            str = str + "🎈"
            i += 1
        }
        returnString = str
        print(returnString)
    }
}
printLeftTree(lines: 5)


//미션3. printRightTree()
func printRightTree(lines : Int){
    for n in 1...lines{
        var returnString : String = ""
        var str1 : String = ""
        var str2 : String = ""
        var i : Int = 0
        var j : Int = 0

        while i < (lines-n){
            str1 = str1 + "  "
            i += 1
        }

        while j < n {
            str2 = str2 + "🎈"
            j += 1
        }

        returnString = str1 + str2
        print(returnString)
    }
}
printRightTree(lines: 4)


//미션4. printCenterTree()
func printCenterTree(lines : Int){
    for n in 1...lines{
        var returnString : String = ""
        var str1 : String = ""
        var str2 : String = ""
        var i : Int = 0
        var j : Int = 0

        while i < (lines-n){
            str1 = str1 + " "
            i += 1
        }

        while j < n {
            str2 = str2 + "🎈"
            j += 1
        }

        returnString = str1 + str2
        print(returnString)
    }
}
printCenterTree(lines: 5)

//미션5. printNumber()
func printNumber(lines : Int){
    var sum : Int = 0
    for i in 1...lines{
        for _ in 1...i {
            sum += 1
            print(sum," ",terminator: "")
        }
        print("\n")
    }
}
printNumber(lines: 5)

//printSquare()
func printSquare(columns : Int){
    var sum : Int = 0
    for _ in 1...columns{
        for _ in 1...columns{
            sum += 1
            print(sum," ",terminator: "")
        }
        print("\n")
    }
}
printSquare(columns: 5)

//printReverse() - 완료X
func printReverse(lines : Int){
    var sum : Int = 0
    for i in 1...lines{
        if i % 2 == 1{
            for _ in 1...lines{
                sum += 1
                print(sum," ",terminator: "")
            }
        }else{
            for _ in 1...lines{
                sum += 1
                print(sum," ",terminator: "")
            }
        }
        print("\n")
    }
}
printReverse(lines: 5)

//미션7. print3515()
func clap369 (lines : Int) -> Array<String>{
    var intArray : Array<String> = []
    for i in 1...lines{
        if i % 15 == 0{
            intArray.append("👏🏼🙏")
        }else if i % 5 == 0{
            intArray.append("🙏")
        }else if i % 3 == 0 {
            intArray.append("👏🏼")
        }else{
            intArray.append("\(i)")
        }
    }
    return intArray
}
print(clap369(lines: 15))


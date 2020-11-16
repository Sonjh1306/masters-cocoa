//
//  MatrixCalculation.swift
//  week3-mission1
//
//  Created by sonjuhyeong on 2020/11/16.
//

import Foundation

class Matrix {
    var a : Double
    var b : Double
    var c : Double
    var d : Double
    
    // func 함수명(인수명:유형 = 기본값(default 값))
    init(a : Double = 0.0 , b : Double = 0.0 , c : Double = 0.0 , d : Double = 0.0) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        
    }
    func initMatrix (a : Double, b : Double , c : Double , d : Double){
        self.a = a
        self.b = b
        self.c = c
        self.d = d
    }
    func sum(with other: Matrix) -> Matrix {
        let sumMatrix : Matrix = Matrix(a: self.a + other.a, b: self.b + other.b , c: self.c + other.c , d: self.d + other.d )
        print("sum : \(sumMatrix.a) , \(sumMatrix.b) , \(sumMatrix.c) , \(sumMatrix.d) ")
        return sumMatrix
    }
    func product(with other: Matrix) -> Matrix {
        let productMatrix : Matrix = Matrix(a: (self.a * other.a) + (self.b * other.c), b: (self.a * other.b) + (self.b * other.d), c: (self.c * other.a) + (self.d * other.c), d: (self.c * other.b) + (self.d * other.d))
        print("sum : \(productMatrix.a) , \(productMatrix.b) , \(productMatrix.c) , \(productMatrix.d) ")
        return productMatrix
    }
}

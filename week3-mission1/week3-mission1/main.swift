//
//  main.swift
//  week3-mission1
//
//  Created by sonjuhyeong on 2020/11/16.
//

import Foundation

// 문제1 : MatrixCalculation
var matrix : Matrix = Matrix()
matrix.initMatrix(a: 1.2, b: 2.3, c: 3.4, d: 4.5)
let otherMatrix : Matrix = Matrix(a: 1.2, b: 2.3, c: 3.4, d: 4.5)

dump(matrix.sum(with: otherMatrix))
dump(matrix.product(with: otherMatrix))

matrix.initMatrix(a: 2.3, b: 3.4, c: 4.5, d: 5.6)
dump(matrix.sum(with: otherMatrix))



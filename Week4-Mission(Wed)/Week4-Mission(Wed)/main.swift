//
//  main.swift
//  Week4-Mission(Wed)
//
//  Created by sonjuhyeong on 2020/11/25.
//

import Foundation

var fileSystem = FileSystem()
print(fileSystem.files(at: "/Users"))
print(fileSystem.isExist(filename: "Shared", at: "/Users"))


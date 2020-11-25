//
//  SearchFileSystem.swift
//  Week4-Mission(Wed)
//
//  Created by sonjuhyeong on 2020/11/25.
//

import Foundation

struct FileSystem {
    func files(at path: String) -> Array<String>{
        var contents: [String] = []
        let selectPath: String = path
        let fileManager = FileManager()
        do {
            contents = try fileManager.contentsOfDirectory(atPath: selectPath)
        } catch let error as NSError {
            print("\(error)")
        }
        return contents.sorted()
    }
    func isExist(filename: String, at path: String) -> Bool{
        var contents: [String] = []
        let selectPath: String = path
        let searchName : String = filename
        let fileManager = FileManager()
        do {
            contents = try fileManager.contentsOfDirectory(atPath: selectPath)
        } catch let error as NSError {
            print("\(error)")
        }
        if contents.contains(searchName) {
            return true
        }else{
            return false
        }
    }
}

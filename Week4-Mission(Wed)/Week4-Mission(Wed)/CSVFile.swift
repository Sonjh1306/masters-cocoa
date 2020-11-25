//
//  CSVFile.swift
//  Week4-Mission(Wed)
//
//  Created by sonjuhyeong on 2020/11/25.
//

import Foundation

struct MakeCSVFile {
    var infoDict : [String:Any] = [:]
    var info : [String] = []
    var convertArr : [String] = []
    var arr : [Any] = []
    
    init() {
        let fileManager = FileManager()
        let fileURL = fileManager.urls(for: .documentDirectory, in:.userDomainMask )[0]
        let path = fileURL.appendingPathComponent("csv.txt")
        do {
            let text = try String(contentsOf: path, encoding: .utf8)
            // 하나의 문자열로 입력되기에 줄 단위로 나눔
            info = text.components(separatedBy: "\n")
        } catch let e{
            print(e.localizedDescription)
        }
        info.remove(at: 0)
        for index in info {
            convertArr = index.components(separatedBy: ", ")
            infoDict["name"] = convertArr[0]
            infoDict["email"] = convertArr[1]
            infoDict["language"] = convertArr[2]
            infoDict["grade"] = Int(convertArr[3])!
            print(infoDict)
        }

    }
    // 사람 추가 함수
    mutating func add(name: String, email: String, language: String, grade: Int){
        infoDict.updateValue(name, forKey: "name")
        infoDict.updateValue(email, forKey: "email")
        infoDict.updateValue(language, forKey: "language")
        infoDict.updateValue(grade, forKey: "grade")
        print(infoDict)
    }
    
    // 이름에 해당하는 사람 정보를 Dictionary 넘기는 함수
//    func findBy(name: String) -> Dictionary<String, Any>{
//
//    }
//    // e-mail 주소로 해당 사람 정보를 지우는 함수(매칭되는 주소가 있어서 지웠으면 true, 찾지 못했으면 false를 리턴한다.)
//    func removeBy(email: String) -> Bool{
//        
//    }
//    // 특정한 CSV 파일이름으로 저장하는 함수(파일이 없어서 제대로 생성하고 나면 true, 파일이 이미 있으면 false를 return한다.)
//    func write(to file: String) -> Bool{
//        
//    }
}




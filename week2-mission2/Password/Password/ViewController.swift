//
//  ViewController.swift
//  Password
//
//  Created by sonjuhyeong on 2020/12/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var levelView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func checkButton(_ sender: Any) {
        let passwordLevel: Int = passwordValidator(password: passwordInput.text!)
        
        if passwordLevel == 1 {
            levelView.backgroundColor = UIColor.red
            descriptionLabel.text = "아주 약한 암호"
        }else if passwordLevel == 2 {
            levelView.backgroundColor = UIColor.orange
            descriptionLabel.text = "약한 암호"
        }else if passwordLevel == 3 {
            levelView.backgroundColor = UIColor.yellow
            descriptionLabel.text = "보통 암호"
        }else if passwordLevel == 4 {
            levelView.backgroundColor = UIColor.blue
            descriptionLabel.text = "강한 암호"
        }else if passwordLevel == 5 {
            levelView.backgroundColor = UIColor.green
            descriptionLabel.text = "아주 강한 암호"
        }
    }
    
    func passwordValidator(password:String) -> Int{
        var passwordLevel: Int = 0
        let passwordArr  = password.utf8.map{ Int($0) }
        var count: Int = 0
        var number: Int = 0
        var english: Int = 0
        var specialChar: Int = 0
        
        // 문자열의 갯수 체크
        if passwordArr.count >= 8 {
            count = 1
        }
        for index in 0..<passwordArr.count {
            // 숫자 체크
            if passwordArr[index] >= 48 && passwordArr[index] <= 57 {
                number = 1
            // 영문자 체크
            }else if (passwordArr[index] >= 65 && passwordArr[index] <= 90) || (passwordArr[index] >= 97 && passwordArr[index] <= 122){
                english = 2
            // 특수문자 체크
            }else if (passwordArr[index] >= 33 && passwordArr[index] <= 47) || (passwordArr[index] >= 58 && passwordArr[index] <= 64) || (passwordArr[index] >= 91 && passwordArr[index] <= 95) || (passwordArr[index] >= 123 && passwordArr[index] <= 126){
                specialChar = 1
            // 그 외에 경우
            }else{
                passwordLevel = 3
            }
           
        }
        passwordLevel = count + number + english + specialChar
        return passwordLevel
    }
    

}


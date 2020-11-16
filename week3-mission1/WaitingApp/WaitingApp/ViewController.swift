//
//  ViewController.swift
//  WaitingApp
//
//  Created by sonjuhyeong on 2020/11/16.
//

import UIKit

class ViewController: UIViewController {
    var waitingNumber : Int = 0
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var percentBar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func waitingButton(_ sender: UIButton) {
        if waitingNumber < 20{
            waitingNumber += 1
            countLabel.text = "\(waitingNumber) 명"
            countLabel.textColor = .black
            percentBar.progress = Float(Float(waitingNumber) / 20.0)
        }else{
            countLabel.textColor = .red
        }
    }
    @IBAction func completionButton(_ sender: UIButton) {
        if waitingNumber > 0 {
            waitingNumber -= 1
            countLabel.text = "\(waitingNumber) 명"
            countLabel.textColor = .black
            percentBar.progress = Float(Float(waitingNumber) / 20.0)
        }else{
            
        }
    }
    
}


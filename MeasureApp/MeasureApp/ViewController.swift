//
//  ViewController.swift
//  MeasureApp
//
//  Created by sonjuhyeong on 2020/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = ""
    }

    @IBAction func convertedToMButtonPressed(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputNumber = Double(inputText) {
                let unitValue = Measurement(value: inputNumber, unit: UnitLength.meters)
                    outputLabel.text = "\(unitValue.converted(to: UnitLength.yards))"
            }
        }
    }
}


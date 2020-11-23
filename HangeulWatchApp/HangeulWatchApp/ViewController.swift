//
//  ViewController.swift
//  HangeulWatchApp
//
//  Created by sonjuhyeong on 2020/11/23.
//
import Foundation
import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label17: UILabel!
    @IBOutlet weak var label18: UILabel!
    @IBOutlet weak var label19: UILabel!
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var label21: UILabel!
    @IBOutlet weak var label22: UILabel!
    @IBOutlet weak var label23: UILabel!
    @IBOutlet weak var label24: UILabel!
    @IBOutlet weak var label25: UILabel!
    @IBOutlet weak var label26: UILabel!
    @IBOutlet weak var label27: UILabel!
    @IBOutlet weak var label28: UILabel!
    @IBOutlet weak var label29: UILabel!
    @IBOutlet weak var label30: UILabel!
    @IBOutlet weak var label31: UILabel!
    @IBOutlet weak var label32: UILabel!
    @IBOutlet weak var label33: UILabel!
    @IBOutlet weak var label34: UILabel!
    @IBOutlet weak var label35: UILabel!
    @IBOutlet weak var label36: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(repeatSeond), userInfo: nil, repeats: true)
    }
    @objc func repeatSeond() {
        updateUI()
    }
    
    func currentHour() -> String {
        let formatter_hour = DateFormatter()
        formatter_hour.dateFormat = "HH"
        let current_hour_string = formatter_hour.string(from: Date())
        return current_hour_string
    }

    func currentMinute() -> String {
        let formatter_minute = DateFormatter()
        formatter_minute.dateFormat = "mm"
        let current_minute_string = formatter_minute.string(from: Date())
        return current_minute_string
    }
    func currentSecond() -> String {
        let formatter_second = DateFormatter()
        formatter_second.dateFormat = "ss"
        let current_second_string = formatter_second.string(from: Date())
        return current_second_string
    }
    
    func updateUI(){
        var hour = Int(currentHour())!
        var minute = Int(currentMinute())!
        var second = Int(currentSecond())!
        
        label1.textColor = UIColor.white
        label19.textColor = UIColor.white
    
        // Label2
        if hour >= 1 && hour <= 11   {
            label2.textColor = UIColor.white
        }else{
            label2.textColor = UIColor.gray
        }
        // Label3
        if hour >= 12 || hour <= 23   {
            label3.textColor = UIColor.white
        }else{
            label3.textColor = UIColor.gray
        }
        // Label4
        if hour == 24   {
            label4.textColor = UIColor.white
        }else{
            label4.textColor = UIColor.gray
        }
        // Label5
        if (hour >= 10 && hour <= 12) || (hour >= 22 && hour <= 23)   {
            label5.textColor = UIColor.white
        }else{
            label5.textColor = UIColor.gray
        }
        // Label6
        if hour == 11 || hour == 13 || hour == 1 || hour == 23   {
            label6.textColor = UIColor.white
        }else{
            label6.textColor = UIColor.gray
        }
        // Label7
        if hour == 2 || hour == 12 || hour == 14 {
            label7.textColor = UIColor.white
        }else{
            label7.textColor = UIColor.gray
        }
        // Label8
        if hour == 3 || hour == 15{
            label8.textColor = UIColor.white
        }else{
            label8.textColor = UIColor.gray
        }
        // Label9
        if hour == 4 || hour == 16{
            label9.textColor = UIColor.white
        }else{
            label9.textColor = UIColor.gray
        }
        // Label10
        if hour == 5 || hour == 17{
            label10.textColor = UIColor.white
        }else{
            label10.textColor = UIColor.gray
        }
        // Label11
        if hour == 6 || hour == 18 {
            label11.textColor = UIColor.white
        }else{
            label11.textColor = UIColor.gray
        }
        // Label12
        if hour == 5 || hour == 6 || hour == 17 || hour == 18{
            label12.textColor = UIColor.white
        }else{
            label12.textColor = UIColor.gray
        }
        // Label13
        if hour == 7 || hour == 19 {
            label13.textColor = UIColor.white
        }else{
            label13.textColor = UIColor.gray
        }
        // Label14
        if hour == 7 || hour == 19 {
            label14.textColor = UIColor.white
        }else{
            label14.textColor = UIColor.gray
        }
        // Label15
        if hour == 8 || hour == 20 {
            label15.textColor = UIColor.white
        }else{
            label15.textColor = UIColor.gray
        }
        // Label16
        if hour == 8 || hour == 20 {
            label16.textColor = UIColor.white
        }else{
            label16.textColor = UIColor.gray
        }
        // Label17
        if hour == 9 || hour == 21 {
            label17.textColor = UIColor.white
        }else{
            label17.textColor = UIColor.gray
        }
        // Label18
        if hour == 9 || hour == 21 {
            label18.textColor = UIColor.white
        }else{
            label18.textColor = UIColor.gray
        }
        // Label20
        if hour >= 7 && hour <= 18 {
            label20.text = "☀️"
        }else{
            label20.text = "🌙"
        }
        // ------------------------------------------
        // Label21
        if (minute >= 20 && minute <= 29){
            label21.textColor = UIColor.white
        }else{
            label21.textColor = UIColor.gray
        }
        // Label22
        if (minute >= 30 && minute <= 39){
            label22.textColor = UIColor.white
        }else{
            label22.textColor = UIColor.gray
        }
        // Label23
        if (minute >= 40 && minute <= 49){
            label23.textColor = UIColor.white
        }else{
            label23.textColor = UIColor.gray
        }
        // Label24
        if (minute >= 50 && minute <= 59){
            label24.textColor = UIColor.white
        }else{
            label24.textColor = UIColor.gray
        }
        // Label25
        if (minute >= 10 && minute <= 59){
            label25.textColor = UIColor.white
        }else{
            label25.textColor = UIColor.gray
        }
        // Label26
        if (minute == 1 || minute == 11 || minute == 21 || minute == 31 || minute == 41 || minute == 51) {
            label26.textColor = UIColor.white
        }else{
            label26.textColor = UIColor.gray
        }
        // Label27
        if (minute == 2 || minute == 12 || minute == 22 || minute == 32 || minute == 42 || minute == 52) {
            label27.textColor = UIColor.white
        }else{
            label27.textColor = UIColor.gray
        }
        // Label28
        if (minute == 3 || minute == 13 || minute == 23 || minute == 33 || minute == 43 || minute == 53) {
            label28.textColor = UIColor.white
        }else{
            label28.textColor = UIColor.gray
        }
        // Label29
        if (minute == 4 || minute == 14 || minute == 24 || minute == 34 || minute == 44 || minute == 54) {
            label29.textColor = UIColor.white
        }else{
            label29.textColor = UIColor.gray
        }
        // Label30
        if (minute == 5 || minute == 15 || minute == 25 || minute == 35 || minute == 45 || minute == 55) {
            label30.textColor = UIColor.white
        }else{
            label30.textColor = UIColor.gray
        }
        // Label31
        if (minute == 6 || minute == 16 || minute == 26 || minute == 36 || minute == 46 || minute == 56) {
            label31.textColor = UIColor.white
        }else{
            label31.textColor = UIColor.gray
        }
        // Label32
        if (minute == 7 || minute == 17 || minute == 27 || minute == 37 || minute == 47 || minute == 57) {
            label32.textColor = UIColor.white
        }else{
            label32.textColor = UIColor.gray
        }
        // Label33
        if (minute == 8 || minute == 18 || minute == 28 || minute == 38 || minute == 48 || minute == 58) {
            label33.textColor = UIColor.white
        }else{
            label33.textColor = UIColor.gray
        }
        // Label34
        if (minute == 9 || minute == 19 || minute == 29 || minute == 39 || minute == 49 || minute == 59) {
            label34.textColor = UIColor.white
        }else{
            label34.textColor = UIColor.gray
        }
        // Label35
        if minute >= 1 && minute <= 59 {
            label35.textColor = UIColor.white
        }else{
            label35.textColor = UIColor.gray
        }
        // ------------------------------------------
        
        // Label36
        if second >= 0 && second <= 59 {
            label36.textColor = UIColor.white
            switch second {
            case 0:
                label36.text = "정각"
            case 1:
                label36.text = "일초"
            case 2:
                label36.text = "이초"
            case 3:
                label36.text = "삼초"
            case 4:
                label36.text = "사초"
            case 5:
                label36.text = "오초"
            case 6:
                label36.text = "육초"
            case 7:
                label36.text = "칠초"
            case 8:
                label36.text = "팔초"
            case 9:
                label36.text = "구초"
            case 10:
                label36.text = "십초"
            case 11:
                label36.text = "십\n일초"
            case 12:
                label36.text = "십\n이초"
            case 13:
                label36.text = "십\n삼초"
            case 14:
                label36.text = "십\n사초"
            case 15:
                label36.text = "십\n오초"
            case 16:
                label36.text = "십\n육초"
            case 17:
                label36.text = "십\n칠초"
            case 18:
                label36.text = "십\n팔초"
            case 19:
                label36.text = "십\n구초"
            case 20:
                label36.text = "이십\n초"
            case 21:
                label36.text = "이십\n일초"
            case 22:
                label36.text = "이십\n이초"
            case 23:
                label36.text = "이십\n삼초"
            case 24:
                label36.text = "이십\n사초"
            case 25:
                label36.text = "이십\n오초"
            case 26:
                label36.text = "이십\n육초"
            case 27:
                label36.text = "이십\n칠초"
            case 28:
                label36.text = "이십\n팔초"
            case 29:
                label36.text = "이십\n구초"
            case 30:
                label36.text = "삼십\n초"
            case 31:
                label36.text = "삼십\n일초"
            case 32:
                label36.text = "삼십\n이초"
            case 33:
                label36.text = "삼십\n삼초"
            case 34:
                label36.text = "삼십\n사초"
            case 35:
                label36.text = "삼십\n오초"
            case 36:
                label36.text = "삼십\n육초"
            case 37:
                label36.text = "삼십\n칠초"
            case 38:
                label36.text = "삼십\n팔초"
            case 39:
                label36.text = "삼십\n구초"
            case 40:
                label36.text = "사십\n초"
            case 41:
                label36.text = "사십\n일초"
            case 42:
                label36.text = "사십\n이초"
            case 43:
                label36.text = "사십\n삼초"
            case 44:
                label36.text = "사십\n사초"
            case 45:
                label36.text = "사십\n오초"
            case 46:
                label36.text = "사십\n육초"
            case 47:
                label36.text = "사십\n칠초"
            case 48:
                label36.text = "사십\n팔초"
            case 49:
                label36.text = "사십\n구초"
            case 50:
                label36.text = "오십\n초"
            case 51:
                label36.text = "오십\n일초"
            case 52:
                label36.text = "오십\n이초"
            case 53:
                label36.text = "오십\n삼초"
            case 54:
                label36.text = "오십\n사초"
            case 55:
                label36.text = "오십\n오초"
            case 56:
                label36.text = "오십\n육초"
            case 57:
                label36.text = "오십\n칠초"
            case 58:
                label36.text = "오십\n팔초"
            case 59:
                label36.text = "오십\n구초"
            default:
                break
            }
        }
    }
}

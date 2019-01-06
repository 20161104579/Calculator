//
//  ViewController.swift
//  calculator
//
//  Created by chenrui on 2018/9/26.
//  Copyright © 2018年 Andy Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sw:Bool = false
    var end = "0"
    var endd = "0"
    var finish = "0"
    var p:Bool = false//是否清空
    //var point:Bool = false//判断是否有小数点
    var a = "0"//数字
    var ch = "0"//符号
    
    @IBAction func yushu(_ sender: Any) {
        sw = true
        sum.text = sum.text! + "%"
        ch = "%"
    }
    
    @IBAction func point(_ sender: Any) {
        sum.text = sum.text! + "."
        a = "."
        //point = true
        end += a
    }
    
    @IBAction func zero(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "0"
        a = "0"
        end += a
    }
    @IBAction func nine(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "9"
        a = "9"
        end += a
    }
    @IBAction func eight(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "8"
        a = "8"
        end += a
    }
    @IBAction func seven(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "7"
        a = "7"
        end += a
    }
    @IBAction func six(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "6"
        a = "6"
        end += a
    }
    @IBAction func five(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "5"
        a = "5"
        end += a
    }
    @IBAction func four(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "4"
        a = "4"
        end += a
    }
    @IBAction func three(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "3"
        a = "3"
        end += a
    }
    @IBAction func two(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "2"
        a = "2"
        end += a
    }
    @IBAction func one(_ sender: Any) {
        if p {
            sum.text = ""
            p = false
        }
        sum.text = sum.text! + "1"
        a = "1"
        end += a
    }
    
    @IBAction func qingkong(_ sender: Any) {
        sum.text = ""
        end = "0"
        endd = "0"
    }
    @IBAction func show(_ sender: Any) {
        //sum.text = equal
        
        if ch == "+" {
            if(sw) {
                finish = "\(Double(end)! + Double(endd)!)"
            }
        }
        if ch == "*" {
            if(sw) {
                finish = "\(Double(end)! * Double(endd)!)"
            }
        }
        if ch == "-" {
            if(sw) {
                finish = "\(Double(endd)! - Double(end)!)"
            }
        }
        if ch == "/" {
            if(sw) {
                finish = "\(Double(endd)! / Double(end)!)"
            }
        }
        if ch == "%" {
            if(sw) {
                finish = "\(Int(end)! % Int(endd)!)"
            }
        }
        sw = false
        let _:Double = Double(finish)!
        finish = String(format:"%.8f",Double(finish)!)
        while (finish.last == "0"){
            finish.removeLast()
        }
        if (finish.last == "."){
            finish.removeLast()
        }
        
        if sum.text == "0" {
            sum.text = "错误"
        }
        sum.text = finish
        p = true
        
        end = "0"
        endd = "0"
    }
    @IBOutlet weak var sum: UILabel!
    var equal:String = "0"
    @IBAction func addequal(_ sender: Any) {
        //equal = "\(Int(input1.text!)! + Int(input2.text!)!)"
        sw = true
        endd = end
        end = "0"
        sum.text = sum.text! + "+"
        ch = "+"
    }
    
    @IBAction func chu(_ sender: Any) {
        sw = true
        endd = end
        end = "0"
        sum.text = sum.text! + "/"
        ch = "/"
    }
    @IBAction func reduce(_ sender: Any) {
        sw = true
        endd = end
        end = "0"
        sum.text = sum.text! + "-"
        ch = "-"
    }
    @IBAction func cheng(_ sender: Any) {
        sw = true
        endd = end
        end = "0"
        sum.text = sum.text! + "*"
        ch = "*"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


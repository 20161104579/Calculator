//
//  ViewController.swift
//  calculator
//
//  Created by chenrui on 2018/9/26.
//  Copyright © 2018年 Andy Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func zero(_ sender: Any) {
        sum.text = "0"
        a = "0"
    }
    @IBAction func nine(_ sender: Any) {
        sum.text = "9"
        a = "9"
    }
    @IBAction func eight(_ sender: Any) {
        sum.text = "8"
        a = "8"
    }
    @IBAction func seven(_ sender: Any) {
        sum.text = "7"
        a = "7"
    }
    @IBAction func six(_ sender: Any) {
        sum.text = "6"
        a = "6"
    }
    @IBAction func five(_ sender: Any) {
        sum.text = "5"
        a = "5"
    }
    @IBAction func four(_ sender: Any) {
        sum.text = "4"
        a = "4"
    }
    @IBAction func three(_ sender: Any) {
        sum.text = "3"
        a = "3"
    }
    @IBAction func two(_ sender: Any) {
        sum.text = "2"
        a = "2"
    }
    @IBAction func one(_ sender: Any) {
        sum.text = "1"
        a = "1"
    }
    var sw:Bool = false
    var end = "0"
    var a = "0"
    var ch = "0"
    @IBAction func show(_ sender: Any) {
        //sum.text = equal
        if ch == "+" {
            while(sw) {
                end += "Int(ch!)!"
                sum.text = end
            }
        }
        
    }
    @IBOutlet weak var sum: UILabel!
    var equal:String = "0"
    @IBAction func addequal(_ sender: Any) {
        //equal = "\(Int(input1.text!)! + Int(input2.text!)!)"
        sw = true
        sum.text = "+"
        ch = "+"
    }
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


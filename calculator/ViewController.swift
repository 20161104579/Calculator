//
//  ViewController.swift
//  calculator
//
//  Created by chenrui on 2018/9/26.
//  Copyright © 2018年 Andy Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func show(_ sender: Any) {
        sum.text = equal
    }
    @IBOutlet weak var sum: UILabel!
    var equal:String = "0"
    @IBAction func addequal(_ sender: Any) {
        equal = "\(Int(input1.text!)! + Int(input2.text!)!)"
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


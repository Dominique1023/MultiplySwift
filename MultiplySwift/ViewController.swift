//
//  ViewController.swift
//  MultiplySwift
//
//  Created by Dominique on 9/14/14.
//  Copyright (c) 2014 dominique vasquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myNumber: UITextField!
    @IBOutlet weak var myMultiplier: UILabel!
    @IBOutlet weak var myAnswer: UILabel!
    @IBOutlet weak var sliderValue: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onCalculateButtonPressed(sender: AnyObject) {
        let aNumber = myNumber.text.toInt()
        let aMultiplier = myMultiplier.text.toInt()

        let aAnswer = aNumber! * aMultiplier!

        myAnswer.text = String(aAnswer)
        isGreaterThanTwenty()
        fizzbuzz()
    }

    func isGreaterThanTwenty() {
        if myAnswer.text.toInt() > 20{
            view.backgroundColor = UIColor.greenColor()
        }else{
            view.backgroundColor = UIColor.whiteColor()
        }
    }

    func fizzbuzz(){

        if myAnswer.text.toInt()! % 3 == 0 & self.myAnswer.text.toInt()! % 5{
            myAnswer.text = "fizzbuzz"
        }else if myAnswer.text.toInt()! % 3 == 0{
            myAnswer.text = "fizz"
        }else if myAnswer.text.toInt()! % 5 == 0{
            myAnswer.text = "buzz"
        }
    }

    @IBAction func sliderValueChanged(sender: UISlider) {
        var valueFormat:NSString = NSString(format: "%.0f", sliderValue.value)
        myMultiplier.text = valueFormat
    }
    
}


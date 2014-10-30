//
//  ViewController.swift
//  Tip Me -- Swift
//
//  Created by Jian Yao Ang on 10/30/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var totalBillTextField: UITextField!
    @IBOutlet var numberOfPeopleTextField: UITextField!
    @IBOutlet var tenPercent: UIButton!
    
    var totalBillAmount: Double?
    
    var bill = Bill()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func onTenPercentButtonPressed(sender: AnyObject)
    {
        self.totalBillTextField.resignFirstResponder()
        
        var billAmountValue = self.totalBillTextField.text
        var billAmountDoubleValue : Double = NSString(string: billAmountValue).doubleValue
        
        var tenPercentOfBillAmount = 0.1 * billAmountDoubleValue
        
        self.totalBillAmount = billAmountDoubleValue + tenPercentOfBillAmount
        
        println("this is self.totalBillAmount = \(self.totalBillAmount)")
    }
    
    @IBAction func onCalculateButtonPressed(sender: AnyObject)
    {
        var numberOfPeopleString = self.numberOfPeopleTextField.text
        var numberOfPeopleDoubleValue : Double = NSString(string: numberOfPeopleString).doubleValue
        
        var billToBePaidPerPerson = self.totalBillAmount! / numberOfPeopleDoubleValue
        
        self.bill.numberToBePaidPerPerson = billToBePaidPerPerson
        
        println("self.bill.numberToBePaidPerPerson = \(self.bill.numberToBePaidPerPerson)")
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        self.view.endEditing(true)
    }

}


//
//  BillDetailsVC.swift
//  Tip Me -- Swift
//
//  Created by Jian Yao Ang on 10/30/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import Foundation
import UIKit

class BillDetailsVC: UIViewController{
    
    @IBOutlet var totalBillDetail: UILabel!
    @IBOutlet var individualPayment: UILabel!
    
    var bill = Bill()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.totalBillDetail.text = "\(self.bill.theTotalBillAmount!)"
        self.individualPayment.text = "\(self.bill.numberToBePaidPerPerson!)"
    }
}

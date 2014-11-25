//
//  ViewController.swift
//  CalculateDatTip
//
//  Created by Andy Archer on 11/24/14.
//  Copyright (c) 2014 Andy Archer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var fifteenPercentLabel: UILabel!
    @IBOutlet weak var eighteenPercentLabel: UILabel!
    @IBOutlet weak var twentyPercentLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateTipAmountFor(tipPct: Float) -> NSString {
        let tipMultiplier: Float = tipPct/100
        let totalAmount = (amountTextField.text as NSString).floatValue
        let calculatedTipAmount = tipMultiplier * totalAmount
        let totalString = NSString(format:"$%.2f",calculatedTipAmount)
        return totalString
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        fifteenPercentLabel.text = calculateTipAmountFor(15)
        eighteenPercentLabel.text = calculateTipAmountFor(18)
        twentyPercentLabel.text = calculateTipAmountFor(20)
    }
}


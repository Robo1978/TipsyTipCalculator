//
//  ViewController.swift
//  TipsyTipCalculator
//
//  Created by Rob Bianca on 5/19/18.
//  Copyright © 2018 RJB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterBillTF: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    var tipCalcBrains = TipCalcBrains(billAmount: 25.00, tipPercent: 0.15)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func billAmountChange(_ sender: Any) {
    }
    @IBAction func tipPercentChange(_ sender: Any) {
    }
    
    func calculateTip() {
        tipCalcBrains.tipPercent = Double(tipPercentSlider.value)
        tipCalcBrains.billAmount = ((enterBillTF.text)! as NSString).doubleValue
        tipCalcBrains.calculateTip()
    }
    
    func updateBillUI() {
        totalAmount.text = String(format: "$%0.2f", tipCalcBrains.totalAmount)
        tipAmountLbl.text = String(format: "$%0.2f", tipCalcBrains.tipAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }
    
}


//
//  ViewController.swift
//  tippy
//
//  Created by Youngjoon Park on 10/01/2019.
//  Copyright © 2019 Youngjoon Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    
    @IBOutlet weak var tipTwoLabel: UILabel!
    @IBOutlet weak var tipThreeLabel: UILabel!
    @IBOutlet weak var tipFourLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        //print("Hello");
        
        view.endEditing(true);
         
    }
  
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPerentages = [0.18, 0.2, 0.25]
        
        let tip = bill * tipPerentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let tip2 = total / 2
        let tip3 = total / 3
        let tip4 = total / 4
        
        //tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        tipTwoLabel.text = String(format: "$%.2f", tip2)
        tipThreeLabel.text = String(format: "$%.2f", tip3)
        tipFourLabel.text = String(format: "$%.2f", tip4)
        
    }
    
    
    
}


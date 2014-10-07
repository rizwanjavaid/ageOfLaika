//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Rizwan Javaid on 10/5/14.
//  Copyright (c) 2014 Rizwan Javaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Dog Outlets
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsCalculatedLabel: UILabel!
    
    
    // Cat Outlets
    @IBOutlet weak var catYearsCalculatedLabel: UILabel!
    @IBOutlet weak var humanYearsForCatTextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let ageInHumanYears:Double = Double((humanYearsTextField.text as NSString).doubleValue)
        let conversionConstant:Double = 7.0
//        println(ageInHumanYears)
        dogYearsCalculatedLabel.hidden = false
        dogYearsCalculatedLabel.text = "You are " + "\(ageInHumanYears * conversionConstant)" + " in Dog Years"
        
    }

    @IBAction func convertToCatYearsButtonPressed(sender: UIButton) {
        
        let ageInHumanYears = humanYearsForCatTextfield.text.toInt()
        let conversionConstant = 4
        catYearsCalculatedLabel.hidden = false
        catYearsCalculatedLabel.text = "You are " + "\(ageInHumanYears! * conversionConstant)" + " in Cat Years"
    }
   
}










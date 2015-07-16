//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Pranav Shah on 7/16/15.
//  Copyright (c) 2015 heetashu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: UIButton) {
        
        if enterHumanYearsTextField.text != "" {
            dogYearsLabel.hidden = false
            dogYearsLabel.text = "\(enterHumanYearsTextField.text.toInt()! * 7)" + " human years"
        } else {
            dogYearsLabel.text = ""
            dogYearsLabel.hidden = true
        }
        enterHumanYearsTextField.resignFirstResponder()
    }

}


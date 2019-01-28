//
//  ViewController.swift
//  SocialSecurity
//
//  Created by Mark Meretzky on 1/27/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Called whenever the user inserts into, or deletes from, the UITextField.

    @IBAction func editingChanged(_ sender: UITextField) {
        if let text: String = sender.text {
            //Delete any non-digits from sender.text.
            sender.text = text.filter {"0123456789".contains($0);}
        }
    }
    
    //Called when the user taps the return key.
    //Dismiss the keyboard if the UITextField contains exactly 9 characters.
    
    @IBAction func primaryActionTriggered(_ sender: UITextField) {
        if let text: String = sender.text,
            text.count == 9 {
            sender.resignFirstResponder();
        }
    }

}


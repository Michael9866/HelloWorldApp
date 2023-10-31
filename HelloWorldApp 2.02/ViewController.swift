//
//  ViewController.swift
//  HelloWorldApp 2.02
//
//  Created by Michael Caine on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UIView!
    @IBOutlet weak var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
        greetingButton.setTitle("Show Greeting", for: .normal)
    }
    
    
    @IBAction func greetingPressedButton() {
        greetingLabel.isHidden.toggle()
/*
        if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        } else {
            greetingButton.setTitle("Hide Greeting", for: .normal)
        }
 */
// more optimised
        greetingButton.setTitle(greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting", for: .normal)
    }
}



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
        greetingButton.configuration = setupButton(wtih: "Show Greeting")
    }
    
    
    @IBAction func greetingPressedButton() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            wtih: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )

    }
    
    private func setupButton(wtih title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}



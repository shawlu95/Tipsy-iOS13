//
//  RerulstsViewController.swift
//  Tipsy
//
//  Created by main on 6/9/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var calculator: Calculator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = calculator.totalString
        settingsLabel.text = calculator.settingString
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
